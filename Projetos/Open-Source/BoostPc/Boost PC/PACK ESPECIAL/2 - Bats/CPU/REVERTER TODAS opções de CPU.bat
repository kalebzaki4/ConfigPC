@echo off
mode con: cols=73 lines=21
title Reverter Otimizacoes de CPU
color 0A
echo ============================
echo REVERTENDO OTIMIZACOES DE CPU E HYPER-V
echo ============================
echo.
echo 1. Reverter Aceleração Dinâmica de Frequência da CPU
echo 2. Reverter Configuracao de Maximo Desempenho da CPU
echo 3. Reverter Desativação de Throttling da CPU
echo 4. Reverter Desativação do Parking da CPU
echo 5. Reverter Desativação do Hyper-V
echo.
set /p escolha="Escolha a opcao para reverter ou digite T para todas: "

if "%escolha%"=="T" goto todas
if "%escolha%"=="1" goto acelere
if "%escolha%"=="2" goto desempenho
if "%escolha%"=="3" goto throttling
if "%escolha%"=="4" goto parking
if "%escolha%"=="5" goto hyperv
goto end

:todas
call :acelere
call :desempenho
call :throttling
call :parking
call :hyperv
goto end

:acelere
echo Revertendo Aceleração Dinâmica de Frequência da CPU...
reg add "HKLM\SYSTEM\CurrentControlSet\Services\intelppm" /v "Start" /t REG_DWORD /d 3 /f
echo Aceleração Dinâmica de Frequência da CPU revertida!
pause
goto end

:desempenho
echo Revertendo configuracao de Maximo Desempenho da CPU...
powercfg /setactive SCHEME_BALANCED
echo Configuracao de Maximo Desempenho da CPU revertida!
pause
goto end

:throttling
echo Revertendo desativação de Throttling da CPU...
powercfg -setacvalueindex SCHEME_CURRENT SUB_PROCESSOR PROCTHROTTLEMAX 50
powercfg -setactive SCHEME_CURRENT
echo Throttling da CPU revertido!
pause
goto end

:parking
echo Revertendo desativação de Parking da CPU...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMin" /t REG_DWORD /d 100 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\0cc5b647-c1df-4637-891a-dec35c318583" /v "ValueMax" /t REG_DWORD /d 100 /f
echo Parking da CPU revertido!
pause
goto end

:hyperv
echo Revertendo desativação do Hyper-V...
bcdedit /set hypervisorlaunchtype auto
echo Desativação do Hyper-V revertida!
pause
goto end

:end
echo Todas as opcoes foram processadas.
pause
exit



