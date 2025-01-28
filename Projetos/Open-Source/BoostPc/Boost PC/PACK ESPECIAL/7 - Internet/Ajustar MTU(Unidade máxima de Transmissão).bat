@echo off

netsh interface ipv4 set subinterface "Wi-Fi" mtu=1492 store=persistent
netsh interface ipv4 set subinterface "Ethernet" mtu=1492 store=persistent
pause
