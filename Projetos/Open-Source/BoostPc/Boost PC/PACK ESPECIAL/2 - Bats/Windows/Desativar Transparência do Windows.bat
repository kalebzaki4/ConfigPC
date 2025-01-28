@echo off
echo Desativando a transparência da barra de tarefas...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 0 /f
echo Transparência desativada!
pause
