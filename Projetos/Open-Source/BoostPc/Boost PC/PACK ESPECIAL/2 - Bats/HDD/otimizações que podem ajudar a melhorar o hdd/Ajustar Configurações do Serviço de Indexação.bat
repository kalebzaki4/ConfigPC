@echo off
color 0c
echo Desativando o serviço de indexação...
sc config WSearch start= disabled
net stop WSearch
echo Serviço de indexação desativado!
pause
exit
