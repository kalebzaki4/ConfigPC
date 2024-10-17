@echo off
powershell -Command "Get-AppxPackage *news* | Remove-AppxPackage"
pause