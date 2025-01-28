@echo off
mode con: cols=73 lines=21
title Reverter Otimizações do Sistema
color 0A
echo =======================================
echo REVERTENDO OTIMIZAÇÕES DO SISTEMA
echo =======================================
echo.
echo 1. Reverter ajustes de tempo de resposta da barra de tarefas
echo 2. Reverter serviços de sombra
echo 3. Reverter desativação do Windows Aero
echo 4. Reverter desativação da Telemetria
echo 5. Reverter desativação do UAC
echo 6. Reverter desativação da hibernação
echo 7. Reverter desativação de transições de janelas
echo 8. Reverter desativação da transparência da barra de tarefas
echo 9. Reverter desativação de atualizações automáticas
echo 10. Reverter desativação das animações de minimizar e maximizar
echo 11. Reverter desativação do Windows Search
echo 12. Reverter desativação de serviços do Windows
echo 13. Reverter ajustes do BCDEdit
echo.
set /p escolha="Escolha a opcao para reverter ou digite T para todas: "

if "%escolha%"=="T" goto todas
if "%escolha%"=="1" goto barra
if "%escolha%"=="2" goto sombra
if "%escolha%"=="3" goto aero
if "%escolha%"=="4" goto telemetria
if "%escolha%"=="5" goto uac
if "%escolha%"=="6" goto hibernacao
if "%escolha%"=="7" goto transicoes
if "%escolha%"=="8" goto transparencia
if "%escolha%"=="9" goto atualizacoes
if "%escolha%"=="10" goto animacoes
if "%escolha%"=="11" goto search
if "%escolha%"=="12" goto servicos
if "%escolha%"=="13" goto bcedit
goto end

:todas
call :barra
call :sombra
call :aero
call :telemetria
call :uac
call :hibernacao
call :transicoes
call :transparencia
call :atualizacoes
call :animacoes
call :search
call :servicos
call :bcedit
goto end

:barra
echo Revertendo ajustes de tempo de resposta da barra de tarefas...
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 400 /f
echo Ajustes da barra de tarefas revertidos!
pause
goto end

:sombra
echo Revertendo serviços de sombra...
vssadmin delete shadowstorage /for=C: /on=C: /maxsize=UNBOUNDED
echo Serviços de sombra revertidos!
pause
goto end

:aero
echo Revertendo desativação do Windows Aero...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 9C 12 03 80 /f
echo Windows Aero restaurado!
pause
goto end

:telemetria
echo Revertendo desativação da Telemetria...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 1 /f
echo Telemetria restaurada!
pause
goto end

:uac
echo Revertendo desativação do UAC...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d 1 /f
echo UAC restaurado!
pause
goto end

:hibernacao
echo Revertendo desativação da hibernação...
powercfg -h on
echo Hibernação restaurada!
pause
goto end

:transicoes
echo Revertendo desativação de transições de janelas...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d 90 12 03 80 /f
echo Transições de janelas restauradas!
pause
goto end

:transparencia
echo Revertendo desativação da transparência da barra de tarefas...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v EnableTransparency /t REG_DWORD /d 1 /f
echo Transparência da barra de tarefas restaurada!
pause
goto end

:atualizacoes
echo Revertendo desativação de atualizações automáticas...
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v NoAutoUpdate /t REG_DWORD /d 0 /f
echo Atualizações automáticas restauradas!
pause
goto end

:animacoes
echo Revertendo desativação das animações de minimizar e maximizar...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v MinAnimate /t REG_DWORD /d 1 /f
echo Animações restauradas!
pause
goto end

:search
echo Revertendo desativação do Windows Search...
sc config WSearch start= delayed-auto
sc start WSearch
echo Windows Search restaurado!
pause
goto end

:servicos
echo Revertendo desativação de serviços do Windows...
sc config "wisvc" start= demand
sc start "wisvc"
sc config "DPS" start= demand
sc start "DPS"
sc config "TermService" start= demand
sc start "TermService"
sc config "WbioSrvc" start= demand
sc start "WbioSrvc"
sc config "WSearch" start= delayed-auto
sc start "WSearch"
sc config "TabletInputService" start= demand
sc start "TabletInputService"
sc config "wuauserv" start= demand
sc start "wuauserv"
sc config "WinDefend" start= demand
sc start "WinDefend"
sc config "DiagTrack" start= demand
sc start "DiagTrack"
sc config "W32Time" start= demand
sc start "W32Time"
sc config "WaaSMedicSvc" start= demand
sc start "WaaSMedicSvc"
sc config "RetailDemo" start= demand
sc start "RetailDemo"
sc config "igts" start= demand
sc start "igts"
sc config "bthserv" start= demand
sc start "bthserv"
sc config "DoSvc" start= demand
sc start "DoSvc"
sc config "Spooler" start= demand
sc start "Spooler"
sc config "RemoteRegistry" start= demand
sc start "RemoteRegistry"
sc config "SessionEnv" start= demand
sc start "SessionEnv"
sc config "PcaSvc" start= demand
sc start "PcaSvc"
sc config "Fax" start= demand
sc start "Fax"
echo Serviços do Windows restaurados!
pause
goto end

:bcedit
echo Revertendo ajustes do BCDEdit...
bcdedit /set useplatformtick no
bcdedit /set disabledynamictick no
bcdedit /set nx optin
bcdedit /set bootux enabled
bcdedit /set bootmenupolicy legacy
bcdedit /set hypervisorlaunchtype auto
bcdedit /set tpmbootentropy ForceEnable
bcdedit /set quietboot no
bcdedit /set linearaddress57 OptIn
bcdedit /set increaseuserva 2048
bcdedit /set firstmegabytepolicy UseFirst
bcdedit /set avoidlowmemory 0x0
bcdedit /set nolowmem No
bcdedit /set allowedinmemorysettings 0x1
bcdedit /set isolatedcontext Yes
echo BCDEdit revertido!
pause
goto end

:end
echo Todas as opções foram revertidas.
pause
exit
