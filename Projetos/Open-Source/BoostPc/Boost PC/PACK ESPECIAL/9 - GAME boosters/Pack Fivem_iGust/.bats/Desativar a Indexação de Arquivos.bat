@echo off
echo Desativando a Indexação de Arquivos no SSD...
sc stop "wsearch"
sc config "wsearch" start= disabled
echo Indexação de arquivos desativada no SSD!
pause
