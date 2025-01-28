@echo off

net stop wuauserv
sc config wuauserv start= disabled
net stop bits
sc config bits start= disabled
net stop dosvc
sc config dosvc start= disabled
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /t REG_DWORD /d 1 /f


pause

