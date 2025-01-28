@echo off
echo Desativando sugestões de pesquisa na barra de tarefas...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Search" /v SearchHistoryEnabled /t REG_DWORD /d 0 /f
echo Sugestões desativadas!
pause
