@echo off

powershell -Command "Get-AppxPackage *store* | Remove-AppxPackage"
pause