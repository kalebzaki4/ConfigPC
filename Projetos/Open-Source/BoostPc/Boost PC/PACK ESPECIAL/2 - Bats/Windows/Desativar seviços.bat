@echo off

sc stop "wisvc"
sc config "wisvc" start= disabled

sc stop "DPS"
sc config "DPS" start= disabled

sc stop "TermService"
sc config "TermService" start= disabled

sc stop "WbioSrvc"
sc config "WbioSrvc" start= disabled

sc stop "WSearch"
sc config "WSearch" start= disabled

sc stop "TabletInputService"
sc config "TabletInputService" start= disabled

sc stop "wuauserv"
sc config "wuauserv" start= disabled

sc stop "WinDefend"
sc config "WinDefend" start= disabled

sc stop "DiagTrack"
sc config "DiagTrack" start= disabled

sc stop "W32Time"
sc config "W32Time" start= disabled

sc stop "WaaSMedicSvc"
sc config "WaaSMedicSvc" start= disabled

sc stop "RetailDemo"
sc config "RetailDemo" start= disabled

sc stop "igts"
sc config "igts" start= disabled

sc stop "bthserv"
sc config "bthserv" start= disabled

sc stop "DoSvc"
sc config "DoSvc" start= disabled

sc stop "Spooler"
sc config "Spooler" start= disabled

sc stop "RemoteRegistry"
sc config "RemoteRegistry" start= disabled

sc stop "SessionEnv"
sc config "SessionEnv" start= disabled

sc stop "PcaSvc"
sc config "PcaSvc" start= disabled

sc stop "Fax"
sc config "Fax" start= disabled

pause