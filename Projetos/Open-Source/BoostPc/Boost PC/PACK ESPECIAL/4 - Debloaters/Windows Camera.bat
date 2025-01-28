@echo off

powershell -Command "Get-AppxPackage *camera* | Remove-AppxPackage"
pause