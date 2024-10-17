@echo off
powershell -Command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"
pause