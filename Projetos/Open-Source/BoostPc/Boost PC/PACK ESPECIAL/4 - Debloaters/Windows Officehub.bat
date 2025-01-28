@echo off

powershell -Command "Get-AppxPackage *officehub* | Remove-AppxPackage"
pause
