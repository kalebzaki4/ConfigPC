@echo off
echo Desativando animações de minimizar e maximizar...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v MinAnimate /t REG_DWORD /d 0 /f
echo Animações desativadas!
pause
