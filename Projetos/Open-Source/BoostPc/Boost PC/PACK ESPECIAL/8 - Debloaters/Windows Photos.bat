@echo off
powershell -Command "Get-AppxPackage *photos* | Remove-AppxPackage"
pause