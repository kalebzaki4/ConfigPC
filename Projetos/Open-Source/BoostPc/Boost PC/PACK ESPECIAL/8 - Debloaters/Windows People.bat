@echo off
powershell -Command "Get-AppxPackage *people* | Remove-AppxPackage"
pause