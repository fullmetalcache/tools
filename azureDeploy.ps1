#Simple script to deploy VM based on snapshot in Azure
#Will auto-provision and name resources based on contract name passed in
#
# You will need to fill in the subscription id! You can get this by just running the Login-AzureRmAccount and inspecting the response or by logging into the Azure portal in a web browser
#
#https://docs.microsoft.com/en-us/azure/virtual-machines/scripts/virtual-machines-windows-powershell-sample-create-vm-from-snapshot

 param (
    [Parameter(Mandatory=$true)][string]$contract
 )

Import-Module AzureRM

Login-AzureRmAccount

#Provide the subscription Id
$subscriptionId = ''

#Provide the name of your resource group
$resourceGroupName ='Testing'

#Provide the name of the snapshot that will be used to create OS disk
$snapshotName = 'WIn10x64Base'

#Provide the name of the OS disk that will be created using the snapshot
$osDiskName = $contract + '-disk'

#Provide the name of an existing virtual network where virtual machine will be created
$virtualNetworkName = $contract + '-vnet'

#Provide the name of the virtual machine
$virtualMachineName = $contract + '-vm'

#You can probably leave this as is
$subnetName = $contract + '-subnet'
$subnetPrefix = '192.168.66.0/24'
$subnetConf = New-AzureRMVirtualNetworkSubnetConfig -Name $subnetName -AddressPrefix $subnetPrefix
$addressPrefix = '192.168.0.0/16'

#Provide the size of the virtual machine
#e.g. Standard_DS3
#Get all the vm sizes in a region using below script:
#e.g. Get-AzureRmVMSize -Location westus
$virtualMachineSize = 'Standard_B2s'

#Set the context to the subscription Id where Managed Disk will be created
Select-AzureRmSubscription -SubscriptionId $SubscriptionId

New-AzureRmVirtualNetwork -ResourceGroupName $resourceGroupName -Name $virtualNetworkName -AddressPrefix $addressPrefix -Location centralus -Subnet $subnetConf

$snapshot = Get-AzureRmSnapshot -ResourceGroupName $resourceGroupName -SnapshotName $snapshotName 
 
$diskConfig = New-AzureRmDiskConfig -AccountType $storageType -Location $snapshot.Location -SourceResourceId $snapshot.Id -CreateOption Copy
 
$disk = New-AzureRmDisk -Disk $diskConfig -ResourceGroupName $resourceGroupName -DiskName $osDiskName

#Initialize virtual machine configuration
$VirtualMachine = New-AzureRmVMConfig -VMName $virtualMachineName -VMSize $virtualMachineSize

#Use the Managed Disk Resource Id to attach it to the virtual machine. Please change the OS type to linux if OS disk has linux OS
$VirtualMachine = Set-AzureRmVMOSDisk -VM $VirtualMachine -ManagedDiskId $disk.Id -CreateOption Attach -Windows

#Create a public IP for the VM  
$publicIp = New-AzureRmPublicIpAddress -Name ($VirtualMachineName.ToLower()+'_ip') -ResourceGroupName $resourceGroupName -Location $snapshot.Location -AllocationMethod Dynamic

#Get the virtual network where virtual machine will be hosted
$vnet = Get-AzureRmVirtualNetwork -Name $virtualNetworkName -ResourceGroupName $resourceGroupName

# Create NIC in the first subnet of the virtual network 
$nic = New-AzureRmNetworkInterface -Name ($VirtualMachineName.ToLower()+'_nic') -ResourceGroupName $resourceGroupName -Location $snapshot.Location -SubnetId $vnet.Subnets[0].Id -PublicIpAddressId $publicIp.Id

$VirtualMachine = Add-AzureRmVMNetworkInterface -VM $VirtualMachine -Id $nic.Id

#Create the virtual machine with Managed Disk
New-AzureRmVM -VM $VirtualMachine -ResourceGroupName $resourceGroupName -Location $snapshot.Location
