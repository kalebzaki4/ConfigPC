@echo off
color 0d
echo Ativando cache de gravação em disco para melhorar o desempenho...
echo.
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\IDE" /v EnableWriteCache /t REG_DWORD /d 1 /f
echo Cache de gravação ativado com sucesso!
pause
exit
