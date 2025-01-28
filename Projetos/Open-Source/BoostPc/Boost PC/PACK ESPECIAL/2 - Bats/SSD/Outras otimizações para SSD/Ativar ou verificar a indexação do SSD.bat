@echo off
echo Desativando a indexacao do SSD...
attrib -s -h C:\Windows\System32\SearchIndexer.exe
sc config WSearch start= disabled
net stop WSearch
echo Indexacao desativada!
pause
