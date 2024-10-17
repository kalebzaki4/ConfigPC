@echo off
title Limpeza PC
mode 96,21

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



:menu
echo.
echo. 		%b% __  __                              _       _          
echo. 		^|  \/  ^|                            ^| ^|     ^(_^)         
echo. 		^| \  / ^|   ___   _ __ ___    _ __   ^| ^|__    _   ___    
echo. 		^| ^|\/^| ^|  / _ \ ^| ^'_ ` _ \  ^| ^'_ \  ^| ^'_ \  ^| ^| / __^|%r%   
echo. 		^| ^|  ^| ^| ^|  __/ ^| ^| ^| ^| ^| ^| ^| ^|_^) ^| ^| ^| ^| ^| ^| ^| \__ \   
echo. 		^|_^|  ^|_^|  \___^| ^|_^| ^|_^| ^|_^| ^| .__/  ^|_^| ^|_^| ^|_^| ^|___/   
echo.                             		    ^| ^|                         
echo.                             	            ^|_^|                         
echo %n% 	"------------------------------------------------------------------------"
echo.
echo.
echo.
echo 	   %o%[ 1 ]%neon_vp% Limpar Cookies     %o%[ 2 ]%neon_vp% Limpar DNS     %o%[ 3 ]%neon_vp% Limpar cache
echo.
echo. 
echo. 	                                  
echo.
echo.%gg%
set /p op=Selecionar:%bb%
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3

:teclaerrada
echo tecla errada
goto menu


:3
cls
del /f /s /q %systemdrive%\*.etl
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\*.bak
del /f /s /q %systemdrive%\*.bac
del /f /s /q %systemdrive%\*.bup
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.dmp
del /f /s /q %systemdrive%\*.temp
timeout /t 3 >nul
goto menu


:1
cls
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16384
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2



timeout /t 3 >nul
goto menu
:2
cls
ipconfig /flushdns
timeout /t 3 >nul
goto menu
