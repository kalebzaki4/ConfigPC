@echo off
sc stop "PcaSvc"
sc config "PcaSvc" start= disabled
echo Serviço de Assistente de Compatibilidade desativado!
pause
