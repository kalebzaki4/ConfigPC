@echo off

powershell -Command "Get-AppxPackage *onedrive* | Remove-AppxPackage"
pause