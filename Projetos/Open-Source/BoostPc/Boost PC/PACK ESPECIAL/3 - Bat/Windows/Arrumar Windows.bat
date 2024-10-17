@echo off

sfc /scannow
dism /online /cleanup-image /restorehealth

pause
