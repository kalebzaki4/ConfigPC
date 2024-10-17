@echo off

color b

echo Verificando e reparando integridade do sistema...
sfc /scannow
echo Verificação e reparo concluídos.

echo Iniciando a verificação e reparação da imagem do sistema usando DISM...

dism /online /cleanup-image /restorehealth

echo Processo concluído.

echo Verificando e corrigindo erros no disco...

chkdsk C: /f /r /x

echo Verificação e correção concluída.
pause
