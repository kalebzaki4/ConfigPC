@echo off
echo Limpando cache de atualizações do Windows...

net stop wuauserv
net stop bits
rd /s /q %windir%\SoftwareDistribution
net start wuauserv
net start bits

echo Cache de atualizações limpo!
pause
exit
