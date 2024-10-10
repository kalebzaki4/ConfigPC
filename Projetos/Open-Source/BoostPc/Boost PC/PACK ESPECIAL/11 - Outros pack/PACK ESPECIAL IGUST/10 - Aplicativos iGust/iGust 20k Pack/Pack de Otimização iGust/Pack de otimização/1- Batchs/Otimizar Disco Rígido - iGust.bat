
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
set gg=[93m
set q=[90m
set gr=[32m
set o=[38;5;202m
set bb=[38;5;74m
set nn=[38;5;82m
set rr=[1;91m
set blb=[1;94m
set neon_vp=[1;38;5;129m
set ha=[38;5;203m


:memp
cls
FOR /F %%A in ('"PROMPT $H&FOR %%B in (1) DO REM"') DO SET "BS=%%A"
title Otimizar Disco Rígido - iGust
echo.
echo.
echo.                       %m%██%n%╗    %m%██████%n%╗    %m%██%n%╗   %m%██%n%╗   %m%███████%n%╗   %m%████████%n%╗%m%    
echo.                       %m%██%n%║   %m%██%n%╔════╝    %m%██%n%║   %m%██%n%║   %m%██%n%╔════╝   %n%╚══%m%██%n%╔══╝%m%    
echo.                       %m%██%n%║   %m%██%n%║  %m%███%n%╗   %m%██%n%║   %m%██%n%║%m%   ███████%n%╗      %m%██%n%║       
echo.                       %m%██%n%║   %m%██%n%║   %m%██%n%║   %m%██%n%║   %m%██%n%║   %n%╚════%m%██%n%║      %m%██%n%║       
echo.                       %m%██%n%║   %n%╚%m%██████%n%╔╝   %n%╚%m%██████%n%╔╝   %m%███████%n%║      %m%██%n%║       
echo.                       %n%╚═%n%╝    %n%╚═════╝     %n%╚═════╝    %n%╚══════╝      %n%╚═╝%m%  
echo. %o%    
Call :TYPEfast "                             • Made By Memphis, Made For iGust "
timeout /t 2 >NUL
echo.
echo.
echo %r% "%q%───────────────────────────────────────────────────────────────────────────────────────────%r%" %w%
echo.
echo.
call :ColorText 0 "                            ["    
call :ColorText 4 " 1"    
call :ColorText 0 " ]"    
call :ColorText a " S"    
call :ColorText a "S"    
call :ColorText a "D"       



        call :ColorText 0 "                   ["    
        call :ColorText 4        " 2"    
        call :ColorText 0        " ]"    
        call :ColorText f        " H" 
        call :ColorText f         "D"       
        call :ColorText f         "D"    


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
goto memp
cls


:op2
cls
title HDD - iGust
fsutil behavior set disableLastAccess 2
fsutil behavior set disable8dot3 0
goto memp



:op1
cls
title SSD - iGust
fsutil behavior set disableLastAccess 0
fsutil behavior set disable8dot3 1
goto memp


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