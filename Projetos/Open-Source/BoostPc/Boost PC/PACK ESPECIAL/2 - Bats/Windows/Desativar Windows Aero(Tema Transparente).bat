@echo off
echo Desativando o Windows Aero...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 90 12 03 80 /f
echo Aero desativado!
pause
