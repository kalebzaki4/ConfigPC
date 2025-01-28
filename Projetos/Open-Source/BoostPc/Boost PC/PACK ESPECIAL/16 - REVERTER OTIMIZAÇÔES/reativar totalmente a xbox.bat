@echo off
title Reativando Xbox e Xbox Game Bar
echo Ativando serviços do Xbox...

sc config XboxGipSvc start= auto
net start XboxGipSvc
sc config XblAuthManager start= auto
net start XblAuthManager
sc config XblGameSave start= auto
net start XblGameSave
sc config XboxNetApiSvc start= auto
net start XboxNetApiSvc
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v AppCaptureEnabled /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\GameDVR" /v GameDVR_Enabled /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_FSEBehaviorMode /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_HonorUserFSEBehaviorMode /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_FSEBehavior /t REG_DWORD /d 0 /f
reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_DXGIHonorFSEWindowsCompatible /t REG_DWORD /d 1 /f

REM Confirmando a reativação
echo Serviços e funcionalidades do Xbox reativados com sucesso!
echo se você leu, vc é gay
pause
