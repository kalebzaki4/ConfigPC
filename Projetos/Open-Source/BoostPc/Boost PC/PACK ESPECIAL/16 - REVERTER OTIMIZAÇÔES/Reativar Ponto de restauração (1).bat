@echo off
echo Ativando a Restauração do Sistema...

sc config srservice start= auto
net start srservice
sc config swprv start= auto
net start swprv

REM Habilita a Restauração do Sistema nas unidades C:, D: e E:
wmic /Namespace:\\root\default Path SystemRestore Call Enable C:\
wmic /Namespace:\\root\default Path SystemRestore Call Enable D:\
wmic /Namespace:\\root\default Path SystemRestore Call Enable E:\

echo Restauração do Sistema ativada com sucesso
pause
