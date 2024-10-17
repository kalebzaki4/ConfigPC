@echo off
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f
sc stop lfsvc
sc config lfsvc start= disabled
echo Localização desativada!
pause
