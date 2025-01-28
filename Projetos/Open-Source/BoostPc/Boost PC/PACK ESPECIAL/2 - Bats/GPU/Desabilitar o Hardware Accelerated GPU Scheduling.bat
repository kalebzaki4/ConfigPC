@echo off
echo Desativando o Hardware Accelerated GPU Scheduling...
reg add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f
echo Hardware Accelerated GPU Scheduling desativado!
pause
