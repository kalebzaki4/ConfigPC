@echo off
echo Desabilitando transições de janelas...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 90 12 03 80 /f
echo Transições de janelas desabilitadas!
pause
