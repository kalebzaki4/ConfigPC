@echo off

powershell -Command "Get-AppxPackage *maps* | Remove-AppxPackage"
pause