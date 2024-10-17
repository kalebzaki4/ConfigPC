@echo off
echo. > %temp%\empty
del %temp%\empty /q
echo 1 > %temp%\clean
echo 2 > %temp%\clean
del %temp%\clean /q
for /f "skip=4 tokens=*" %%a in ('tasklist /FI "STATUS eq NOT RESPONDING"') do taskkill /f /fi "IMAGENAME eq %%a"
