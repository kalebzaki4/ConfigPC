@echo off
echo Reativando o aplicativo Xbox e serviços relacionados...

powershell -command "Get-AppxPackage -allusers *XboxApp* | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register '$($_.InstallLocation)\AppXManifest.xml'}"
sc config XblAuthManager start= auto
net start XblAuthManager
sc config XblGameSave start= auto
net start XblGameSave
sc config XblNetwork start= auto
net start XblNetwork
sc config XboxGipSvc start= auto
net start XboxGipSvc
sc config XboxGipSvc start= auto
net start XboxGipSvc

echo Reativação completa! O aplicativo Xbox e serviços relacionados foram restaurados.
pause
