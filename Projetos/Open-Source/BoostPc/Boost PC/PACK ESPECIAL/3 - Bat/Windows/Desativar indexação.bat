@echo off
sc stop "WSearch"
sc config "WSearch" start=disabled

pause
