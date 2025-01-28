@echo off

netsh int tcp set global autotuninglevel=normal
netsh int tcp set global qmgrlimit=4194304
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent
netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /f
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global chimney=default
netsh int tcp set global congestionprovider=none
netsh int tcp set global ecncapability=disabled
netsh int tcp set global timestamps=disabled
netsh int tcp set global rss=enabled
netsh int tcp set global rsc=disabled
Reg.exe delete "HKLM\Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v "fMinimizeConnections" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v "fSoftDisconnectConnections" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WCN\UI" /v "DisableWcnUi" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DisableNotifications" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DisableUnicastResponsesToMulticastBroadcast" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile" /v "DoNotAllowExceptions" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\IcmpSettings" /v "AllowInboundEchoRequest" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\IcmpSettings" /v "AllowInboundMaskRequest" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\IcmpSettings" /v "AllowInboundRouterRequest" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\IcmpSettings" /v "AllowInboundTimestampRequest" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\IcmpSettings" /v "AllowOutboundDestinationUnreachable" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\IcmpSettings" /v "AllowOutboundPacketTooBig" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\IcmpSettings" /v "AllowOutboundParameterProblem" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\IcmpSettings" /v "AllowOutboundSourceQuench" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\IcmpSettings" /v "AllowOutboundTimeExceeded" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\IcmpSettings" /v "AllowRedirect" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging" /v "LogDroppedPackets" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Logging" /v "LogSuccessfulConnections" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\RemoteAdminSettings" /v "Enabled" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Services\FileAndPrint" /v "Enabled" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\DomainProfile\Services\RemoteDesktop" /v "Enabled" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DisableNotifications" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DisableUnicastResponsesToMulticastBroadcast" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile" /v "DoNotAllowExceptions" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\IcmpSettings" /v "AllowInboundEchoRequest" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\IcmpSettings" /v "AllowInboundMaskRequest" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\IcmpSettings" /v "AllowInboundRouterRequest" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\IcmpSettings" /v "AllowInboundTimestampRequest" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\IcmpSettings" /v "AllowOutboundDestinationUnreachable" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\IcmpSettings" /v "AllowOutboundPacketTooBig" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\IcmpSettings" /v "AllowOutboundParameterProblem" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\IcmpSettings" /v "AllowOutboundSourceQuench" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\IcmpSettings" /v "AllowOutboundTimeExceeded" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\IcmpSettings" /v "AllowRedirect" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging" /v "LogDroppedPackets" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\Logging" /v "LogSuccessfulConnections" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\RemoteAdminSettings" /v "Enabled" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\Services\FileAndPrint" /v "Enabled" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\WindowsFirewall\StandardProfile\Services\RemoteDesktop" /v "Enabled" /f
rem Remove "MaximumUdpPacketSize"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNS\Parameters" /v "MaximumUdpPacketSize" /f
rem Remove "CacheHashTableBucketSize"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "CacheHashTableBucketSize" /f
rem Remove "CacheHashTableSize"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "CacheHashTableSize" /f
rem Remove "DefaultTTL"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "DefaultTTL" /f
rem Remove "DynamicBacklogGrowthDelta"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "DynamicBacklogGrowthDelta" /f
rem Remove "EnableAutoDoh"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "EnableAutoDoh" /f
rem Remove "EnableDynamicBacklog"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "EnableDynamicBacklog" /f
rem Remove "extension"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "extension" /f
rem Remove "GlobalMaxTcpWindowSize"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "GlobalMaxTcpWindowSize" /f
rem Remove "MaxCacheEntryTtlLimit"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaxCacheEntryTtlLimit" /f
rem Remove "MaxCacheTtl"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaxCacheTtl" /f
rem Remove "MaximumDynamicBacklog"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaximumDynamicBacklog" /f
rem Remove "MaxNegativeCacheTtl"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaxNegativeCacheTtl" /f
rem Remove "MaxSOACacheEntryTtlLimit"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MaxSOACacheEntryTtlLimit" /f
rem Remove "MinimumDynamicBacklog"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MinimumDynamicBacklog" /f
rem Remove "MouseSensitivity"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "MouseSensitivity" /f
rem Remove "NegativeCacheTime"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "NegativeCacheTime" /f
rem Remove "NegativeSOACacheTime"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "NegativeSOACacheTime" /f
rem Remove "NetFailureCacheTime"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "NetFailureCacheTime" /f
rem Remove "ServerPriorityTimeLimit"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "ServerPriorityTimeLimit" /f
rem Remove "ServiceDllUnloadOnStop"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "ServiceDllUnloadOnStop" /f
rem Remove "TcpNoDelay"
Reg.exe delete "HKLM\System\CurrentControlSet\Services\DNScache\Parameters" /v "TcpNoDelay" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartNameResolution" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "DisableSmartProtocolReordering" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "EnableIdnMapping" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "EnableMulticast" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "PreferLocalOverLowerBindingDNS" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "RegistrationEnabled" /f
Reg.exe delete "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "UpdateSecurityLevel" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastCopyReceiveThreshold" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DynamicSendBufferDisable" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "IgnorePushBitOnReceives" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "NonBlockingSendSpecialBuffering" /f
Reg.exe delete "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DisableRawSecurity" /f

Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "DefaultReceiveWindow" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "DefaultSendWindow" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "DisableAddressSharing" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "IgnorePushBitOnReceives" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "InitialLargeBufferCount" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "InitialMediumBufferCount" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "InitialSmallBufferCount" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "LargeBufferSize" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "MaxFastTransmit" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "MediumBufferSize" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "PriorityBoost" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "SmallBufferSize" /f
Reg.exe delete "HKLM\System\ControlSet001\Services\AFD\Parameters" /v "TransmitWorker" /f

Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "DisablePagingExecutive" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "DisableStrictNameChecking" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "DynamicBacklogGrowthDelta" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "EnableDynamicBacklog" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "IRPStackSize" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "MaximumDynamicBacklog" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "MaxMpxCt" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "MaxWorkItems" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "MinimumDynamicBacklog" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "Size" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "SizReqBuf" /f
Reg.exe delete "HKLM\System\CurrentControlSet\Services\ADF\Parameters" /v "SystemPages" /f
Reg.exe delete "HKLM\System\CurrentControlSet\services\AeLookupSvc" /v "Start" /f

pause
