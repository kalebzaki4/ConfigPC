@echo off
echo Desativando o arquivo de paginacao...
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False
wmic pagefileset where name="C:\\pagefile.sys" delete
echo Arquivo de paginacao desativado!
pause
