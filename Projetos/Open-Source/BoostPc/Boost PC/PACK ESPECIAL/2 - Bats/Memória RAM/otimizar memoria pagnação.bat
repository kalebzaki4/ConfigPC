@echo off
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=True
echo Arquivo de paginacao ajustado para automatico.
pause
