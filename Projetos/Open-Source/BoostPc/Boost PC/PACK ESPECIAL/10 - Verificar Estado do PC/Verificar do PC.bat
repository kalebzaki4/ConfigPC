@echo off

mode con: cols=80 lines=25
title Verificação de Sistema by iGust
:menu
color 4F
echo  		================================================
echo.
echo    		    MENU DE VERIFICAÇÃO DO SISTEMA by iGust
echo.
echo 		================================================
echo.
echo 		1.  Verificar o Estado do Disco
echo 		2.  Verificar o Uso de Memoria RAM
echo 		3.  Verificar o Uso da CPU
echo 		4.  Testar Velocidade de Internet e Latencia
echo 		5.  Listar Processos que Consomem Muitos Recursos
echo 		6.  Verificar Temperatura da CPU
echo 		7.  Verificar Uso do Disco
echo 		8.  Verificar Versão do Sistema Operacional
echo 		9.  Verificar Estado do Sistema de Arquivos
echo 		10. Verificar Programas de Inicialização
echo 		11. Verificar Integridade dos Arquivos do Sistema
echo 		0. Sair
echo.
echo 		================================================

set /p escolha="Escolha uma opcao: "

if "%escolha%"=="1" goto disco
if "%escolha%"=="2" goto memoria
if "%escolha%"=="3" goto cpu
if "%escolha%"=="4" goto internet
if "%escolha%"=="5" goto processos
if "%escolha%"=="6" goto temperatura
if "%escolha%"=="7" goto disco_uso
if "%escolha%"=="8" goto versao
if "%escolha%"=="9" goto sistema_arquivos
if "%escolha%"=="10" goto startups
if "%escolha%"=="11" goto integridade
if "%escolha%"=="0" goto sair

echo Opção inválida, tente novamente!
pause
cls
goto menu

:disco
cls
echo Verificando o estado do disco...
powershell -Command "Get-PhysicalDisk | Select-Object DeviceID, MediaType, OperationalStatus, HealthStatus"
pause
cls
goto menu

:memoria
cls
echo Verificando o uso da memoria RAM...
powershell -Command "Get-CimInstance Win32_OperatingSystem | Select-Object TotalVisibleMemorySize, FreePhysicalMemory | ForEach-Object {Write-Output ('Memoria Total: ' + [math]::Round($_.TotalVisibleMemorySize / 1MB, 2) + ' GB'); Write-Output ('Memoria Livre: ' + [math]::Round($_.FreePhysicalMemory / 1MB, 2) + ' GB')}"
pause
cls
goto menu

:cpu
cls
echo Verificando o uso da CPU...
start perfmon /res
pause
cls
goto menu

:internet
cls
echo Testando a latencia...
powershell -Command "Test-Connection google.com -Count 4 | Select-Object Address, ResponseTime"
pause
cls
goto menu

:processos
cls
echo Listando os processos que mais consomem recursos...
powershell -Command "Get-Process | Sort-Object CPU -Descending | Select-Object -First 10 | Format-Table Id, ProcessName, CPU, WorkingSet -AutoSize"
pause
cls
goto menu

:temperatura
cls
echo Verificando a temperatura da CPU...
start "" "%USERPROFILE%\Downloads\PACK ESPECIAL 50K\PACK ESPECIAL 50K\10 - Verificar Estado do PC\OpenHardwareMonitor.exe"

pause
cls
goto menu

:disco_uso
cls
echo Verificando o uso do disco...
powershell -Command "Get-WmiObject -Class Win32_LogicalDisk | Select-Object DeviceID, MediaType, @{Name='Used Space(GB)';Expression={[math]::round($_.Size/1GB,2)-[math]::round($_.FreeSpace/1GB,2)}}, @{Name='Free Space(GB)';Expression={[math]::round($_.FreeSpace/1GB,2)}}"
pause
cls
goto menu

:versao
cls
echo Verificando a versão do Windows...
powershell -Command "Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version, BuildNumber"
pause
cls
goto menu

:sistema_arquivos
cls
echo Verificando o estado do sistema de arquivos...
chkdsk C: /f
pause
cls
goto menu


:startups
cls
echo Verificando programas de inicialização...
powershell -Command "Get-CimInstance -Class Win32_StartupCommand | Select-Object Name, Command, User"
pause
cls
goto menu

:integridade
cls
echo Verificando a integridade dos arquivos do sistema...
sfc /scannow
pause
cls
goto menu

:sair
echo Saindo do programa...
pause
exit
