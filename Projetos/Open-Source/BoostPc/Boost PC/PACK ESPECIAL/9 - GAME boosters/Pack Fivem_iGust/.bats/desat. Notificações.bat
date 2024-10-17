@echo off
echo Desativando notificações do Windows...

reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\PushNotifications" /v ToastEnabled /t REG_DWORD /d 0 /f

echo Notificações desativadas!
pause
exit
