@echo off

powershell -Command "Get-AppxPackage *phone* | Remove-AppxPackage"
pause