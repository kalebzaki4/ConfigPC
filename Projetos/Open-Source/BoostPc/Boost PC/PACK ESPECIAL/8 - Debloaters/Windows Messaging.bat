@echo off
powershell -Command "Get-AppxPackage *messaging* | Remove-AppxPackage"
pause