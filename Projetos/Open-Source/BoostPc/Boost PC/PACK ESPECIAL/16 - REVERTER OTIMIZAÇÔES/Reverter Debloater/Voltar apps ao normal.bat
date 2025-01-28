@echo off

PowerShell -Command "Get-AppxPackage -allusers Microsoft.WindowsStore | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register \"$($_.InstallLocation)\AppXManifest.xml\"}"
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver
net start wuauserv
net start cryptSvc
net start bits
net start msiserver


pause