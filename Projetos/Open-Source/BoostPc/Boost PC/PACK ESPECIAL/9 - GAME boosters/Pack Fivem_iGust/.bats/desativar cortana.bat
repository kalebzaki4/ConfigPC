@echo off
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 0 /f
taskkill /f /im SearchUI.exe
echo Cortana desativada!
pause
