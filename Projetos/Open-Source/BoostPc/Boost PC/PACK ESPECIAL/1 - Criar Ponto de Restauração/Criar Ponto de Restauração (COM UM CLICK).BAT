@echo off
powershell.exe -Command "Checkpoint-Computer -Description 'Backup Pre-Otimizacao' -RestorePointType MODIFY_SETTINGS"
echo Ponto de restauracao criado com sucesso.
pause
