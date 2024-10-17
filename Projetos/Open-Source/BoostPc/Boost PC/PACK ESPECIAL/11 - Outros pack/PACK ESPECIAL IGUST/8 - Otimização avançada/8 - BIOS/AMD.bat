@echo off
cd /d "%~dp0lib"
SCEWIN_64.exe /i /ms "IOMMU" /qv 0x0
SCEWIN_64.exe /i /ms "Spread Spectrum" /qv 0x0
SCEWIN_64.exe /i /ms "Simultaneous Multi-Threading (SMT) & SMT Control" /qv 0x0
SCEWIN_64.exe /i /ms "Serial(COM) Port0" /qv 0x0
SCEWIN_64.exe /i /ms "Global C-state Control" /qv 0x0
SCEWIN_64.exe /i /ms "Chipset Power Saving Features" /qv 0x0
SCEWIN_64.exe /i /ms "Remote Display Feature" /qv 0x0
SCEWIN_64.exe /i /ms "PS2 Devices Support" /qv 0x0
SCEWIN_64.exe /i /ms "Network Stack Driver Support" /qv 0x0
SCEWIN_64.exe /i /ms "Security Device Support" /qv 0x0
SCEWIN_64.exe /i /ms "Ipv6 PXE Support" /qv 0x0
SCEWIN_64.exe /i /ms "Ipv6 HTTP Support" /qv 0x0
SCEWIN_64.exe /i /ms "PSS Support" /qv 0x0
SCEWIN_64.exe /i /ms "AB Clock Gating" /qv 0x0
SCEWIN_64.exe /i /ms "PCIB Clock Run" /qv 0x0
SCEWIN_64.exe /i /ms "AMD fTPM switch" /qv 0x0
SCEWIN_64.exe /i /ms "Enable Hibernation" /qv 0x0
SCEWIN_64.exe /i /ms "SR-IOV Support" /qv 0x0
SCEWIN_64.exe /i /ms "BME DMA Mitigation" /qv 0x0
SCEWIN_64.exe /i /ms "Integrated Graphics" /qv 0x0
SCEWIN_64.exe /i /ms "Opcache Control" /qv 0x1
SCEWIN_64.exe /i /ms "L1 Stream HW Prefetcher" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "L2 Stream HW Prefetcher" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "CPPC" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "CPPC Preferred Cores" /qv 0x1 /lang en-US
SCEWIN_64.exe /i /ms "PM L1 SS" /qv 0x0 /lang en-US
pause