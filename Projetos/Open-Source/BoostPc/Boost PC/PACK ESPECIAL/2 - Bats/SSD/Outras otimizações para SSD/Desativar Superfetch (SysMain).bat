@echo off
echo Desativando Superfetch...
sc stop SysMain
sc config SysMain start= disabled
echo Superfetch desativado!
pause
