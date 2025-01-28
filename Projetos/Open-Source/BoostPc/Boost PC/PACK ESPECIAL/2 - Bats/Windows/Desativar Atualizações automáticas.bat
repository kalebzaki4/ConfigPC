@echo off
echo Desativando atualizações automáticas...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 1 /f
echo Atualizações automáticas desativadas!
pause
