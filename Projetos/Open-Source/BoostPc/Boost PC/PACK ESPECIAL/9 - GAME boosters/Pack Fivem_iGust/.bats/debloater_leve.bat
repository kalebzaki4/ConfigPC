@echo off
echo Removendo aplicativos pré-instalados...

powershell "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"
powershell "Get-AppxPackage *windowsalarms* | Remove-AppxPackage"
powershell "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
powershell "Get-AppxPackage *windowsmaps* | Remove-AppxPackage"
powershell "Get-AppxPackage *solitairecollection* | Remove-AppxPackage"
powershell "Get-AppxPackage *zunemusic* | Remove-AppxPackage"
powershell "Get-AppxPackage *bingnews* | Remove-AppxPackage"
powershell "Get-AppxPackage *onenote* | Remove-AppxPackage"
powershell "Get-AppxPackage *people* | Remove-AppxPackage"
powershell "Get-AppxPackage *windowsphone* | Remove-AppxPackage"
powershell "Get-AppxPackage *zunevideo* | Remove-AppxPackage"

echo Aplicativos pré-instalados removidos!
pause
exit
