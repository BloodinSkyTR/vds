powershell -executionpolicy bypass -file .\compile.ps1
powershell -executionpolicy bypass -file .\release.ps1 release.ps1 ..\compile.exe -compiler -version 0.2.5.9 -iconfile ..\..\res\compile.ico -company "vds/pwsh community" -product "DialogShell Compile" -description "DialogShell Compiler" -title "compile"