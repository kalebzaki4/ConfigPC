@echo off
Title Cache Cleaner

color 0B
FOR /F "tokens=1,2*" %%V IN ('bcdedit') DO SET adminTest=%%V
IF (%adminTest%)==(Access) goto noAdmin
for /F "tokens=*" %%G in ('wevtutil.exe el') DO (call :do_clear "%%G")
echo.
echo Event Logs have been cleared! ^<press any key^>

:do_clear
echo clearing %1
wevtutil.exe cl %1
