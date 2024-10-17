@echo off
net stop gupdate >nul 2>&1 
sc delete gupdate >nul 2>&1 
net stop googlechromeelevationservice >nul 2>&1 
sc delete googlechromeelevationservice >nul 2>&1 
net stop gupdatem >nul 2>&1 
sc delete gupdatem >nul 2>&1 
taskkill /f /im GoogleUpdate.exe >nul 2>&1 
rmdir "C:\Program Files (x86)\Google\Update" /s /q >nul 2>&1 
cd /d "C:\Program Files\Google\Chrome\Application\" >nul 2>&1 
dir chrmstp.exe /a /b /s >nul 2>&1 
del chrmstp.exe /a /s >nul 2>&1 
cls 
reg.exe delete "HKLM\Software\Microsoft\Active Setup\Installed Components\{8A69D345-D564-463c-AFF1-A69D9E530F96}" /f 
reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Logon\{950E9395-8BFF-4D96-8731-A3BD3F3C3ABD}" /f 
reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Plain\{8EB03C8D-6422-494A-A237-B87232D89A24}" /f 
reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{8EB03C8D-6422-494A-A237-B87232D89A24}" /f 
reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tasks\{950E9395-8BFF-4D96-8731-A3BD3F3C3ABD}" /f 
reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineCore" /f 
reg.exe delete "HKLM\Software\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\GoogleUpdateTaskMachineUA" /f 