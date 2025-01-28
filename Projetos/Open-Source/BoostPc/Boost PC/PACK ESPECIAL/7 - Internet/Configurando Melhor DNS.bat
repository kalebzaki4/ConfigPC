@echo off

ipconfig /flushdns
netsh interface ipv4 set dnsservers name="Wi-Fi" static 8.8.8.8
netsh interface ipv4 add dnsservers name="Wi-Fi" 8.8.4.4 index=2
netsh interface ipv4 set dnsservers name="Ethernet" static 8.8.8.8
netsh interface ipv4 add dnsservers name="Ethernet" 8.8.4.4 index=2
pause
