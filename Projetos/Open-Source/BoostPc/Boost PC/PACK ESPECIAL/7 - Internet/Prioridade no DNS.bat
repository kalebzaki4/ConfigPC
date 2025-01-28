    @echo off

    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNS\Parameters" /v "MaximumUdpPacketSize" /t REG_DWORD /d "1221" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNS\Parameters" /v "MaximumUdpPacketSize" /t REG_DWORD /d "1298" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNS\Parameters" /v "MaximumUdpPacketSize" /t REG_DWORD /d "1398" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "384" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "384" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "900" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "DefaultTTL" /t REG_DWORD /d "64" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "DynamicBacklogGrowthDelta" /t REG_DWORD /d "256" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "EnableAutoDoh" /t REG_DWORD /d "2" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "EnableDynamicBacklog" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "extension" /t REG_EXPAND_SZ /d "%%SystemRoot%%\System32\dnsext.dll" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "GlobalMaxTcpWindowSize" /t REG_SZ /d "Ԁ䲮" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "10800" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "64000" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "64000" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaxCacheEntryTtlLimit" /t REG_DWORD /d "409600" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaxCacheTtl" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheTtl" /t REG_DWORD /d "10800" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxCacheTtl" /t REG_DWORD /d "14400" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "MaximumDynamicBacklog" /t REG_DWORD /d "131072" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaximumUdpPacketSize" /t REG_DWORD /d "4864" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "MaximumUdpPacketSize" /t REG_DWORD /d "4864" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaxNegativeCacheTtl" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxNegativeCacheTtl" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "301" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "301" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaxSOACacheEntryTtlLimit" /t REG_DWORD /d "769" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "MinimumDynamicBacklog" /t REG_DWORD /d "512" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "MouseSensitivity" /t REG_SZ /d "10" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "ServerPriorityTimeLimit" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "ServiceDll" /t REG_EXPAND_SZ /d "%%SystemRoot%%\System32\dnsrslvr.dll" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "ServiceDllUnloadOnStop" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "ServiceDllUnloadOnStop" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters" /v "TcpNoDelay" /t REG_DWORD /d "151807" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters\Probe\{25aa16d5-73d9-4cd8-91ff-0683b3bcd05a}" /v "LastProbeTime" /t REG_DWORD /d "1500872657" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters\Probe\{25aa16d5-73d9-4cd8-91ff-0683b3bcd05a}" /v "NetworkPerformsHijacking" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters\Probe\{e97ca175-e5e7-4580-895e-91be966166ba}" /v "LastProbeTime" /t REG_DWORD /d "1500872066" /f
    Reg.exe add "HKLM\System\CurrentControlSet\Services\Dnscache\Parameters\Probe\{e97ca175-e5e7-4580-895e-91be966166ba}" /v "NetworkPerformsHijacking" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartNameResolution" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartProtocolReordering" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "EnableIdnMapping" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "PreferLocalOverLowerBindingDNS" /t REG_DWORD /d "1" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "RegistrationEnabled" /t REG_DWORD /d "0" /f
    Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "UpdateSecurityLevel" /t REG_DWORD /d "0" /f
