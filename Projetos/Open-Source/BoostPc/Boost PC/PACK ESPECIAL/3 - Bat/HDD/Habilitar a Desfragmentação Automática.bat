@echo off
schtasks /Change /TN "\Microsoft\Windows\Defrag\ScheduledDefrag" /Enable
defrag C: /O /H /U /V
pause
