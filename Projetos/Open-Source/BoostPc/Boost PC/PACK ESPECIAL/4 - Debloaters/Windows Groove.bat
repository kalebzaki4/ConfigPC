@echo off

powershell -Command "Get-AppxPackage *groove* | Remove-AppxPackage"
pause