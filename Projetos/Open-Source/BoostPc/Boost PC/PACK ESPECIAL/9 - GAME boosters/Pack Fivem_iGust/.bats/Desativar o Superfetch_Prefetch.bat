@echo off
echo Desativando Superfetch e Prefetch no HD...
sc stop "SysMain"
sc config "SysMain" start= disabled
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnablePrefetcher /t REG_DWORD /d 0 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v EnableSuperfetch /t REG_DWORD /d 0 /f
echo Superfetch e Prefetch desativados no HD!
pause
