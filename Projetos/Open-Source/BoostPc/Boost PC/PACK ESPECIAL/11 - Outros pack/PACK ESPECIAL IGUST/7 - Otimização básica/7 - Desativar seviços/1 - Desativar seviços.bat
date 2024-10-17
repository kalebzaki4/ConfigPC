@echo off

sc stop "SysMain"

sc stop "wisvc"

sc stop "icssvc"

sc stop "Fax"

sc stop "SessionEnv"

sc stop "TermService"

sc stop "bthserv"

sc stop "TabletInputService"

sc stop "DiagTrack"

sc stop "DPS"

sc stop "DoSvc"

sc stop "WpnService"