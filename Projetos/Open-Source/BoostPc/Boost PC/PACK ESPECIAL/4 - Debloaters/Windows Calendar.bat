@echo off

powershell -Command "Get-AppxPackage *calendar* | Remove-AppxPackage"
pause
