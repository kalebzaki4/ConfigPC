@echo off
color 0c
echo Verificando erros no disco...
chkdsk C: /F /R
echo Verificação concluída!
pause
exit
