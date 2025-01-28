@echo off
echo Desativando o Windows Search...
sc stop WSearch
sc config WSearch start= disabled
echo Windows Search desativado com sucesso!
pause
