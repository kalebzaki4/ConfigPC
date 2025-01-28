@echo off
echo Desativando as notificações...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Notifications\Settings" /v NOC_GLOBAL_SETTING_TOASTS_ENABLED /t REG_DWORD /d 0 /f
echo Notificações desativadas!
pause
