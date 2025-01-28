@echo off

powershell -Command "Get-AppxPackage *getstarted* | Remove-AppxPackage"
pause