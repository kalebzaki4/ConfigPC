@echo off
powershell -Command "Get-AppxPackage *music* | Remove-AppxPackage"
pause