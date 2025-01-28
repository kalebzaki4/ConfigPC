@echo off
echo Ajustando o tempo de resposta da barra de tarefas...
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f
echo Tempo de resposta ajustado com sucesso!
pause
