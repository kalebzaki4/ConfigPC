@echo off
echo Configurando o cache de gravacao no SSD...
wmic diskdrive where "MediaType='Fixed hard disk media'" set CacheEnabled=true
echo Cache de gravacao habilitado!
pause
