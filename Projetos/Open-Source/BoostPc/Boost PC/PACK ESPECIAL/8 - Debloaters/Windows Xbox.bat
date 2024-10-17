@echo off
powershell -Command "Get-AppxPackage *xbox* | Remove-AppxPackage"
pause