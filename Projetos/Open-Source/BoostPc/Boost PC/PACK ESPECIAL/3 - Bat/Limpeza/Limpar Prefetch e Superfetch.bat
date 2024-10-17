@echo off
net stop sysmain
del /f /s /q %systemroot%\Prefetch\*.*
del /f /s /q %systemroot%\Temp\*.*
net start sysmain
pause
