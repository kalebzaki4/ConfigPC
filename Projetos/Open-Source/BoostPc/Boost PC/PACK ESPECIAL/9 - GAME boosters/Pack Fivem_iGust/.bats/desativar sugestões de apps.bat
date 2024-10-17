@echo off
echo Desativando sugestões de apps no menu Iniciar...

reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SystemPaneSuggestionsEnabled /t REG_DWORD /d 0 /f

echo Sugestões desativadas!
pause
exit
