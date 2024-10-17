@echo off
sc stop "WdiSystemHost"
sc config "WdiSystemHost" start= disabled
echo Serviço de Diagnóstico de Memória desativado!
pause
