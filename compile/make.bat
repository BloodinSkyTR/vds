.\compile.exe .\compile-gui.ds1 .\compile-gui.exe -noconsole -sta -version 0.2.6.1 -iconfile ..\res\compile.ico -company "vds/pwsh community" -product "compile-gui" -description "compile-gui" -title "compile-gui"
.\compile.exe .\DialogShell.ds1 .\DialogShell.exe -sta -version 0.2.6.1 -iconfile ..\res\terminal.ico -company "vds/pwsh community" -product "DialogShell" -description "DialogShell" -title "DialogShell"
.\compile.exe .\DialogShell.ds1 .\DialogShell32.exe -sta -x86 -version 0.2.6.1 -iconfile ..\res\terminal.ico -company "vds/pwsh community" -product "DialogShell32" -description "DialogShell32" -title "DialogShell32"
rem Allows for legacy odbc connections.
.\compile.exe .\DialogShell.ds1 .\DialogShellCore.exe -sta -version 0.2.6.1 -iconfile ..\res\terminal.ico -company "vds/pwsh community" -product "DialogShellCore" -description "DialogShellCore" -title "DialogShellCore" -core
.\compile.exe ".\Visual DialogShell.ds1" ".\Visual DialogShell.exe" -version 0.2.6.1 -iconfile ..\res\application.ico -noconsole -sta -company "vds/pwsh community" -product "Visual DialogShell" -description "Visual DialogShell" -title "Visual DialogShell"
.\compile.exe ".\Visual DialogShell.ds1" ".\Visual DialogShell32.exe" -x86 -version 0.2.6.1 -iconfile ..\res\application.ico -noconsole -sta -company "vds/pwsh community" -product "Visual DialogShell32" -description "Visual DialogShell32" -title "Visual DialogShell32"
rem Allows for legacy ODBC connections.
.\compile.exe ".\Visual DialogShell.ds1" ".\Visual DialogShellCore.exe" -version 0.2.6.1 -iconfile ..\res\application.ico -noconsole -sta -company "vds/pwsh community" -product "Visual DialogShellCore" -description "Visual DialogShellCore" -title "Visual DialogShellCore" -core