@echo off
echo Configurando logs para minimizar escritas no SSD...
wevtutil set-log Security /rt:false
wevtutil set-log System /rt:false
wevtutil set-log Application /rt:false
echo Logs ajustados para SSDs!
pause
