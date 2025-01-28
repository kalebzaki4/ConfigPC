@echo off

schtasks /Change /TN "\Microsoft\Windows\Defrag\ScheduledDefrag" /Disable

pause