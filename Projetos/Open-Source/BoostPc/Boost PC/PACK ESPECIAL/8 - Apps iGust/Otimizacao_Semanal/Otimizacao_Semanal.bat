@echo off
chcp 65001 >nul
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
Reg add HKCU\CONSOLE /v VirtualTerminalLevel /t REG_DWORD /d 1 /f >nul 2>&1



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
set bn=[1;38;5;129m
set ha=[38;5;203m
set frr=[38;2;0;255;255m
set fw=[97m



:m
title Otimização semanal - iGust Optimizer
mode 110,26
cls
echo.
echo.
echo.
echo.                             %w%██%c%╗   %w%██████%c%╗   %w%██%c%╗   %w%██%c%╗  %w%███████%c%╗  %w%████████%c%╗    
echo.                             %w%██%c%║  %w%██%c%╔════╝   %w%██%c%║   %w%██%c%║  %w%██%c%╔════╝  ╚══%w%██%c%╔══╝    
echo.                             %w%██%c%║  %w%██%c%║  %w%███%c%╗  %w%██%c%║   %w%██%c%║  %w%███████%c%╗     %w%██%c%║       
echo.                             %w%██%c%║  %w%██%c%║   %w%██%c%║  %w%██%c%║   %w%██%c%║  %c%╚════%w%██%c%║     %w%██%c%║       
echo.                             %w%██%c%║  %c%╚%w%██████%c%╔╝  ╚%w%██████%c%╔╝  %w%███████%c%║     %w%██%c%║       
echo.                             %c%╚═╝   ╚═════╝    ╚═════╝   ╚══════╝     ╚═╝ 
echo %o% 													                Made by Memphis again.                                                            
echo. %COL%[90m           ─────────────────────────────────────────────────────────────────────────────── %w%                                                             
echo.                                                         
echo.                                    %b%[ %frr%1%frr% %b%]%bb% Iniciar otimização semanal                       
echo.                                    %b%[ %frr%2%frr% %b%]%bb% Criar ponto de restauração                       
echo.                
ECHO.                                         
set /p opcao=">: %b%"

if %opcao% equ 1 goto op1

:teclaerrada
cls
%windir%\System32\SystemPropertiesProtection.exe
call :m

:op1
cls
title Otimizando seu PC!

del /s /q /f  c:\windows\temp.
del /s /q /f  C:\WINDOWS\Prefetch
del /s /q /f  %temp%.
del /s /q /f  %systemdrive%\*.tmp
del /s /q /f  %systemdrive%\*._mp
del /s /q /f  %systemdrive%\*.log
del /s /q /f  %systemdrive%\*.gid
del /s /q /f  %systemdrive%\*.chk
del /s /q /f  %systemdrive%\*.old
del /s /q /f  %systemdrive%\recycled\*.*
del /s /q /f  %systemdrive%\$Recycle.Bin\*.*
del /s /q /f  %windir%\*.bak
del /s /q /f  %windir%\prefetch\*.*
del /s /q /f  %LocalAppData%\Microsoft\Windows\Explorer\thumbcache_*.db
del /s /q /f  %LocalAppData%\Microsoft\Windows\Explorer\*.db
del /f  %SystemRoot%\Logs\CBS\CBS.log
del /f  %SystemRoot%\Logs\DISM\DISM.log
rd /s /q  c:\windows\tempor~1
rd /s /q  c:\windows\temp
rd /s /q c:\windows\tmp
rd /s /q  c:\windows\ff*.tmp
rd /s /q  c:\windows\history
rd /s /q  c:\windows\cookies
rd /s /q  c:\windows\recent
rd /s /q  c:\windows\spool\printers
ipconfig /flushdns
RunDll32.exe Inetcpl.cpl  ClearMyTracksByProcess 16exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPDelAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "1" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ConvertibleSlateMode" /t REG_DWORD /d "0" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d "56" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\usbxhci\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\USBHUB3\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\NDIS\Parameters" /v "ThreadPriority" /t REG_DWORD /d "31" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
cls
powershell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Reinicie o computador para aplicar a otimizacao', 'Made by memphis')"









