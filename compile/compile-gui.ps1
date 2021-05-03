directory change "$(regread "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\DialogShell\" "InstallLocation")\compile"
$MyForm = dialog create "Script Packager" 0 0 389 225
$MyForm.icon = "$(regread "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\DialogShell\" "InstallLocation")\res\compile.ico"
    $TextBox1 = dialog add $MyForm TextBox 25 20 250 20 
    dialog settip $textbox1 "Inputfile" 
    $Button1 = dialog add $MyForm Button 25 275 75 20 "Browse"
                dialog property $TextBox1 Multiline "" 
                dialog property $TextBox1 Maxlength "0" 
                dialog property $TextBox1 Wordwrap "true" 
                dialog property $TextBox1 Scrollbars "none" 
                dialog property $TextBox1 acceptstab "" 
                dialog property $TextBox1 acceptsreturn ""  
        $TextBox2 = dialog add $MyForm TextBox 50 20 325 20 
        dialog settip $textbox2 "Outputfile"
      <#  $Button2 = dialog add $MyForm Button 50 275 75 20 "Browse" 
        $button2.add_Click({$in = $(savedlg 'Windows Command Script|*.cmd')
        dialog set $textbox2 $in
        })
		#>
                dialog property $TextBox2 Multiline "" 
                dialog property $TextBox2 Maxlength "0" 
                dialog property $TextBox2 Wordwrap "true" 
                dialog property $TextBox2 Scrollbars "none" 
                dialog property $TextBox2 acceptstab "" 
                dialog property $TextBox2 acceptsreturn ""  
  <#        $TextBox3 = dialog add $MyForm TextBox 75 20 250 20 
        dialog settip $textbox3 "Iconfile"
        $Button3 = dialog add $MyForm Button 75 275 75 20 "Browse"          
                dialog property $TextBox3 Multiline "" 
                dialog property $TextBox3 Maxlength "0" 
                dialog property $TextBox3 Wordwrap "true" 
                dialog property $TextBox3 Scrollbars "none" 
                dialog property $TextBox3 acceptstab "" 
                dialog property $TextBox3 acceptsreturn ""  
      $TextBox4 = dialog add $MyForm TextBox 100 20 100 20 
        dialog settip $textbox4 "Title" 
                dialog property $TextBox4 Multiline "" 
                dialog property $TextBox4 Maxlength "0" 
                dialog property $TextBox4 Wordwrap "true" 
                dialog property $TextBox4 Scrollbars "none" 
                dialog property $TextBox4 acceptstab "" 
                dialog property $TextBox4 acceptsreturn ""  
        $TextBox5 = dialog add $MyForm TextBox 100 135 100 20 
                dialog settip $textbox5 "Description"
                dialog property $TextBox5 Multiline "" 
                dialog property $TextBox5 Maxlength "0" 
                dialog property $TextBox5 Wordwrap "true" 
                dialog property $TextBox5 Scrollbars "none" 
                dialog property $TextBox5 acceptstab "" 
                dialog property $TextBox5 acceptsreturn ""  
        $TextBox6 = dialog add $MyForm TextBox 100 250 100 20 
        dialog settip $textbox6 "Company" 
                dialog property $TextBox6 Multiline "" 
                dialog property $TextBox6 Maxlength "0" 
                dialog property $TextBox6 Wordwrap "true" 
                dialog property $TextBox6 Scrollbars "none" 
                dialog property $TextBox6 acceptstab "" 
                dialog property $TextBox6 acceptsreturn ""  
        $TextBox7 = dialog add $MyForm TextBox 125 20 100 20
        dialog settip $textbox7 "Product" 
                dialog property $TextBox7 Multiline "" 
                dialog property $TextBox7 Maxlength "0" 
                dialog property $TextBox7 Wordwrap "true" 
                dialog property $TextBox7 Scrollbars "none" 
                dialog property $TextBox7 acceptstab "" 
                dialog property $TextBox7 acceptsreturn ""  
        $TextBox8 = dialog add $MyForm TextBox 125 135 100 20
        dialog settip $textbox8 "Copyright" 
                dialog property $TextBox8 Multiline "" 
                dialog property $TextBox8 Maxlength "0" 
                dialog property $TextBox8 Wordwrap "true" 
                dialog property $TextBox8 Scrollbars "none" 
                dialog property $TextBox8 acceptstab "" 
                dialog property $TextBox8 acceptsreturn ""  
        $TextBox9 = dialog add $MyForm TextBox 125 250 100 20
        dialog settip $textbox9 "Trademark" 
                dialog property $TextBox9 Multiline "" 
                dialog property $TextBox9 Maxlength "0" 
                dialog property $TextBox9 Wordwrap "true" 
                dialog property $TextBox9 Scrollbars "none" 
                dialog property $TextBox9 acceptstab "" 
                dialog property $TextBox9 acceptsreturn ""  
        $TextBox10 = dialog add $MyForm TextBox 150 20 100 20
        dialog settip $textbox10 "Version"
                dialog property $TextBox10 Multiline "" 
                dialog property $TextBox10 Maxlength "0" 
                dialog property $TextBox10 Wordwrap "true" 
                dialog property $TextBox10 Scrollbars "none" 
                dialog property $TextBox10 acceptstab "" 
                dialog property $TextBox10 acceptsreturn ""  
        $CheckBox1 = dialog add $MyForm CheckBox 150 135 100 20 "x86" 
                dialog property $CheckBox1 Appearance "Normal" 
                dialog property $CheckBox1 Threestate ""  
        $CheckBox2 = dialog add $MyForm CheckBox 150 250 100 20 "x64" 
                dialog property $CheckBox2 Appearance "Normal" 
                dialog property $CheckBox2 Threestate ""  
        $CheckBox3 = dialog add $MyForm CheckBox 175 20 100 20 "-sta" 
                dialog property $CheckBox3 Appearance "Normal" 
                dialog property $CheckBox3 Threestate ""  
        $CheckBox4 = dialog add $MyForm CheckBox 175 135 100 20 "-mta" 
                dialog property $CheckBox4 Appearance "Normal" 
                dialog property $CheckBox4 Threestate ""  #>
        $CheckBox5 = dialog add $MyForm CheckBox 75 16 335 20 "No Console" 
                dialog property $CheckBox5 Appearance "Normal" 
                dialog property $CheckBox5 Threestate ""  <#
        $CheckBox6 = dialog add $MyForm CheckBox 100 16 335 20 "Require Admin"
		dialog property $CheckBox6 appearance "Button"
		dialog property $CheckBox6 textalign "MiddleCenter"
		
		        $button3.add_Click({$in = $(filedlg 'Icon|*.ico')
        dialog set $textbox3 $in
        })
		#>
                $Button4 = dialog add $MyForm Button 100 16 335 20 "Load .pil"
                $Button5 = dialog add $MyForm Button 125 16 335 20 "Save .pil"      
                $Button6 = dialog add $MyForm Button 150 16 335 20 "Create Package" 
				$MyForm.AcceptButton = $Button6
        
		dialog property $CheckBox5 appearance "Button"
        
		dialog property $CheckBox5 textalign "MiddleCenter"
        if ($args[0])
        {
                inifile open $args[0]
        $textbox1.text = $(iniread compile inputfile)
        $textbox2.text = $(iniread compile outputfile)
        $textbox3.text = $(iniread compile iconfile)
        $textbox4.text = $(iniread compile title)
        $textbox5.text = $(iniread compile description)
        $textbox6.text = $(iniread compile company)
        $textbox7.text = $(iniread compile product)
        $textbox8.text = $(iniread compile copyright)
        $textbox9.text = $(iniread compile trademark)
        $textbox10.text = $(iniread compile version)
        if ($(iniread compile x86) -eq 'False'){$checkbox1.checked = $false}else{if ($(iniread compile x86) -eq 'True'){$checkbox1.checked = $true}}
        if ($(iniread compile x64) -eq 'False'){$checkbox2.checked = $false}else{if ($(iniread compile x64) -eq 'True'){$checkbox2.checked = $true}}
        if ($(iniread compile sta) -eq 'False'){$checkbox3.checked = $false}else{if ($(iniread compile sta) -eq 'True'){$checkbox3.checked = $true}}
        if ($(iniread compile mta) -eq 'False'){$checkbox4.checked = $false}else{if ($(iniread compile mta) -eq 'True'){$checkbox4.checked = $true}}
        if ($(iniread compile noconsole) -eq 'False'){$checkbox5.checked = $false}else{if ($(iniread compile noconsole) -eq 'True'){$checkbox5.checked = $true}}
        if ($(iniread compile requireadmin) -eq 'False'){$checkbox6.checked = $false}else{if ($(iniread compile requireadmin) -eq 'True'){$checkbox6.checked = $true}}
}

if ($args[1])
{directory change $args[1]}
        
        $button1.add_Click({$in = $(filedlg 'DialogShell|*.ds1')
        dialog set $textbox1 $in
		dialog set $textbox2 "$(path $($in))\$(name $($in)).cmd"
        })


        
        $button4.add_Click({
        $pil = $(filedlg 'Pil Files|*.pil')
        inifile open $pil
        $textbox1.text = $(iniread compile inputfile)
        $textbox2.text = $(iniread compile outputfile)
        $textbox3.text = $(iniread compile iconfile)
        $textbox4.text = $(iniread compile title)
        $textbox5.text = $(iniread compile description)
        $textbox6.text = $(iniread compile company)
        $textbox7.text = $(iniread compile product)
        $textbox8.text = $(iniread compile copyright)
        $textbox9.text = $(iniread compile trademark)
        $textbox10.text = $(iniread compile version)
        if ($(iniread compile x86) -eq 'False'){$checkbox1.checked = $false}else{if ($(iniread compile x86) -eq 'True'){$checkbox1.checked = $true}}
        if ($(iniread compile x64) -eq 'False'){$checkbox2.checked = $false}else{if ($(iniread compile x64) -eq 'True'){$checkbox2.checked = $true}}
        if ($(iniread compile sta) -eq 'False'){$checkbox3.checked = $false}else{if ($(iniread compile sta) -eq 'True'){$checkbox3.checked = $true}}
        if ($(iniread compile mta) -eq 'False'){$checkbox4.checked = $false}else{if ($(iniread compile mta) -eq 'True'){$checkbox4.checked = $true}}
        if ($(iniread compile noconsole) -eq 'False'){$checkbox5.checked = $false}else{if ($(iniread compile noconsole) -eq 'True'){$checkbox5.checked = $true}}
        if ($(iniread compile requireadmin) -eq 'False'){$checkbox6.checked = $false}else{if ($(iniread compile requireadmin) -eq 'True'){$checkbox6.checked = $true}}
        })
        
        $Button5.add_Click({
        $pil = $(savedlg 'Pil Files|*.pil')
        inifile open $pil
        inifile write compile inputfile $TextBox1.text
        inifile write compile outputfile $textbox2.text
        inifile write compile iconfile $textbox3.text
        inifile write compile title $textbox4.text
        inifile write compile description $textbox5.text
        inifile write compile company $textbox6.text
        inifile write compile product $textbox7.text
        inifile write compile copyright $textbox8.text
        inifile write compile trademark $textbox9.text
        inifile write compile version $textbox10.text
        inifile write compile x86 $checkbox1.checked
        inifile write compile x64 $checkbox2.checked
        inifile write compile sta $checkbox3.checked
        inifile write compile mta $checkbox4.checked
        inifile write compile noconsole $checkbox5.checked
        inifile write compile requireadmin $checkbox6.checked
        })
        
        
    #   $inv = "'$(curdir)\..\compile\dialogshell.exe' '$(string $FastTab.SelectedTab.Text)' -cpath"
        
        $button6.add_Click({

$ctf1 = Get-Content -Path ([Environment]::GetFolderPath("ProgramFiles")+"\WindowsPowerShell\Modules\vds\vds.psm1") -Encoding UTF8 -ErrorAction SilentlyContinue
$ctf2 = Get-Content -Path $textbox1.text -Encoding UTF8 -ErrorAction SilentlyContinue

if ($checkbox5.checked -eq $true){
	$header = "echo $(chr 36)global:1 = $(chr 34)%1$(chr 34); $(chr 36)global:2 = $(chr 34)%2$(chr 34); $(chr 36)global:3 = $(chr 34)%3$(chr 34); $(chr 36)global:4 = $(chr 34)%4$(chr 34); $(chr 36)global:5 = $(chr 34)%5$(chr 34); $(chr 36)global:6 = $(chr 34)%6$(chr 34); $(chr 36)global:7 = $(chr 34)%7$(chr 34); $(chr 36)global:8 = $(chr 34)%8$(chr 34); $(chr 36)global:9 = $(chr 34)%9$(chr 34);vds>> $(name $($textbox2.text)).cmd$(cr)$(lf)powershell -ep bypass -w h iex(get-content .\$(name $($textbox2.text)).cmd ^| select -skip 3 ^| out-string)$(cr)$(lf)exit$(cr)$(lf)$(cr)$(lf)function vds{$(cr)$(lf)"
	
	}
else{
	$header = "echo $(chr 36)global:1 = $(chr 34)%1$(chr 34); $(chr 36)global:2 = $(chr 34)%2$(chr 34); $(chr 36)global:3 = $(chr 34)%3$(chr 34); $(chr 36)global:4 = $(chr 34)%4$(chr 34); $(chr 36)global:5 = $(chr 34)%5$(chr 34); $(chr 36)global:6 = $(chr 34)%6$(chr 34); $(chr 36)global:7 = $(chr 34)%7$(chr 34); $(chr 36)global:8 = $(chr 34)%8$(chr 34); $(chr 36)global:9 = $(chr 34)%9$(chr 34);vds>> $(name $($textbox2.text)).cmd$(cr)$(lf)powershell -ep bypass iex(get-content .\$(name $($textbox2.text)).cmd ^| select -skip 3 ^| out-string)$(cr)$(lf)exit$(cr)$(lf)$(cr)$(lf)function vds{$(cr)$(lf)"	
}

$footer = "}$(cr)$(lf)$(chr 36)repvds = Get-Content .\$(name $($textbox2.text)).cmd | Select-Object -SkipLast 1 $(cr)$(lf)$(chr 36)repvds | out-file .\$(name $($textbox2.text)).cmd -enc ascii$(cr)$(lf)"

Remove-Item -path $textbox2.text -force
Add-Content $textbox2.text $header -enc ascii
Add-Content $textbox2.text $ctf1 -enc ascii
Add-Content $textbox2.text $ctf2.replace('$args[0]','$1').replace('$args[1]','$2').replace('$args[2]','$3').replace('$args[3]','$4').replace('$args[4]','$5').replace('$args[5]','$6').replace('$args[6]','$7').replace('$args[7]','$8').replace('$args[8]','$9') -enc ascii
Add-Content $textbox2.text $footer -enc ascii
#"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -windowstyle hidden -ep bypass iex(out-string -inputobject (get-content $(chr 39)$(name $($textbox2.text)).$(ext $textbox2.text)$(chr 39)))" | out-file "$(path $($textbox2.text))\$(name $($textbox2.text)).cmd" -encoding ascii
       })
        
        dialog show $MyForm