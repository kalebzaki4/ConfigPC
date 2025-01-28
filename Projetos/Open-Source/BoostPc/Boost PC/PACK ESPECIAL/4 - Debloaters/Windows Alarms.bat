@echo off

powershell -Command "Get-AppxPackage *alarms* | Remove-AppxPackage"
pause