@echo off

sc stop "W32Time"
sc config "W32Time" start= disabled

pause
