@echo off
sc stop "AppCompat"
sc config "AppCompat" start= disabled
echo Serviço de Compatibilidade de Aplicativos desativado!
pause
