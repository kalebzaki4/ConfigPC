@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
Reg add HKCU\CONSOLE /v VirtualTerminalLevel /t REG_DWORD /d 1 /f >nul 2>&1

mode 96,30



:variables
set g=[92m
set r=[91m
set red=[04m
set l=[1m
set w=[0m
set b=[94m
set m=[95m
set p=[35m
set c=[35m
set d=[96m
set u=[0m
set z=[91m
set n=[96m
set y=[40;33m
set g2=[102m
set r2=[101m
set t=[40m
set q=[90m

:slk
title Debloater - iGust
cls
FOR /F %%A in ('"PROMPT $H&FOR %%B in (1) DO REM"') DO SET "BS=%%A"
echo.
echo.
echo.                      %m%██%n%╗    %m%██████%n%╗    %m%██%n%╗   %m%██%n%╗   %m%███████%n%╗   %m%████████%n%╗%m%    
echo.                      %m%██%n%║   %m%██%n%╔════╝    %m%██%n%║   %m%██%n%║   %m%██%n%╔════╝   %n%╚══%m%██%n%╔══╝%m%    
echo.                      %m%██%n%║   %m%██%n%║  %m%███%n%╗   %m%██%n%║   %m%██%n%║%m%   ███████%n%╗      %m%██%n%║       
echo.                      %m%██%n%║   %m%██%n%║   %m%██%n%║   %m%██%n%║   %m%██%n%║   %n%╚════%m%██%n%║      %m%██%n%║       
echo.                      %m%██%n%║   %n%╚%m%██████%n%╔╝   %n%╚%m%██████%n%╔╝   %m%███████%n%║      %m%██%n%║       
echo.                      %n%╚═%n%╝    %n%╚═════╝     %n%╚═════╝    %n%╚══════╝      %n%╚═╝%m%  
echo. %b%   
Call :TYPEfast "                             • Made By Memphis, Made For iGust "
timeout /t 2 >NUL
echo.
echo.
echo %r%  "%q%────────────────────────────────────────────────────────────────────────────────────────%r%" %w%
echo.
echo.
call :ColorText 0 "                    ["    
call :ColorText 4 " 1"    
call :ColorText 0 " ]"    
call :ColorText 5 " D"    
call :ColorText 5 "e"    
call :ColorText 5 "b"
call :ColorText 5 "l"       
call :ColorText 5 "o"      
call :ColorText 5 "a"  
call :ColorText 5 "t"     
call :ColorText 5 "e"       
call :ColorText 5 "r" 

        call :ColorText 0 "                   ["    
        call :ColorText 4        " 2"    
        call :ColorText 0        " ]"    
        call :ColorText f        " D" 
        call :ColorText f         "i"       
        call :ColorText f         "s"    
        call :ColorText f         "c"    
        call :ColorText f         "o" 
        call :ColorText f         "r"    
        call :ColorText f         "d"

echo.
echo.
set /p opcao="> %b%"

if %opcao% equ 1 goto op1
if %opcao% equ 2 goto op2

:teclaerradapae
cls
title Tecla errada!
echo.
echo.
echo %r%                            Tecla errada, tome cuidado na proxima vez.
timeout /t 5 >nul
goto slk
cls


:op2
cls
title Discord - iGust
start https://discord.gg/igust
goto slk


:op1
echo.
title Debloater - iGust By Memphis
cls
chcp 437 > nul
Powershell.exe -command "& {Get-AppxPackage *Microsoft.BingWeather* | Remove-AppxPackage}
timeout /t /nobreak >NUL
title Microsoft BigWeather Desistalado
Powershell.exe -command "& {Get-AppxPackage *Microsoft.GetHelp* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title Microsoft GetHelp Desistalado
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Getstarted* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title Microsoft Getstarted Desistalado 
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Messaging* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title Microsoft Messaging Desistalado 
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Microsoft3DViewer* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
Title Microsoft3DViewer Desistalado 
Powershell.exe -command "& {Get-AppxPackage *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title MicrosoftSolitaireCollection Desistalado 
Powershell.exe -command "& {Get-AppxPackage *Microsoft.MicrosoftStickyNotes* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title MicrosoftStickyNotes Desistalado 
Powershell.exe -command "& {Get-AppxPackage *Microsoft.MixedReality.Portal* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title MixedReality.Portal Desistalado 
Powershell.exe -command "& {Get-AppxPackage *Microsoft.OneConnect* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title OneConnect Desistalado
Powershell.exe -command "& {Get-AppxPackage *Microsoft.People* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title People Desistalado 
Powershell.exe -command "& {Get-AppxPackage *Microsoft.Print3D* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title Print3D Desistalado 
Powershell.exe -command "& {Get-AppxPackage *Microsoft.SkypeApp* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title SkypeApp Desistalado 
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage}
title WindowsAlarms Desistalado 
Powershell.exe -command "& {Get-AppxPackage *Microsoft.WindowsCamera* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title WindowsCamera Desistalado 
Powershell.exe -command "& {Get-AppxPackage *microsoft.windowscommunicationsapps* | Remove-AppxPackage}
timeout /t 1 /nobreak > NUL
title WindowsCommunicationsApps Desistalado 

chcp 65001 > nul&&%w%
cls
goto slk








:TYPE
SET "d[text]=%~1"
CALL :TYPELOOP
GOTO :EOF


:TYPELOOP
IF "%d[text]:~0,1%" == "#" (
    <NUL SET /P "=^!"
) else (
    <NUL SET /P "=d!BS!%d[text]:~0,1%"
)
SET "d[text]=%d[text]:~1%"
IF "%d[text]%" == "" (
    GOTO :EOF
) else (
    FOR /L %%J in (1, 100, 10000000) DO REM
    GOTO :TYPELOOP
)
exit


:TYPEFast
SET "d[text]=%~1"
CALL :TYPELOOPFast
GOTO :EOF


:TYPELOOPFast
IF "%d[text]:~0,1%" == "#" (
    <NUL SET /P "=^!"
) else (
    <NUL SET /P "=d!BS!%d[text]:~0,1%"
)
SET "d[text]=%d[text]:~1%"
IF "%d[text]%" == "" (
    GOTO :EOF
) else (
    FOR /L %%J in (1, 100, 1000000) DO REM
    GOTO :TYPELOOPFast
)


:ColorText    
echo off    
<nul set /p ".=%DEL%" > "%~2"    
findstr /v /a:%1 /R "^$" "%~2" nul    
del "%~2" > nul 2>&1    
goto :eof 
