@echo off
taskkill /F /IM "firefox.exe" 
set parentfolder=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles\ 
for /f "tokens=*" %%a in ('"dir /b "%parentfolder%"|findstr ".*\.default-release""') do set folder=%%a 
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\entries\*. 
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.bin 
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.lz* 
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\index*.* 
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\startupCache\*.little 
del C:\Users\%USERNAME%\AppData\local\Mozilla\Firefox\Profiles\%folder%\cache2\*.log /s /q 

taskkill /f /im maintenanceservice.exe >nul 2>&1 
taskkill /f /im uninstall.exe >nul 2>&1 
net stop MozillaMaintenance >nul 2>&1 
sc delete MozillaMaintenance >nul 2>&1 
rmdir "C:\Program Files (x86)\Mozilla Maintenance Service" /s /q >nul 2>&1 
del /f "C:\Program Files\Mozilla Firefox\maintenanceservice_installer.exe" >nul 2>&1 
del /f "C:\Program Files\Mozilla Firefox\maintenanceservice.exe" >nul 2>&1 
del /f "C:\Program Files\Mozilla Firefox\updater.exe" >nul 2>&1 