@echo off
mode con: cols=73 lines=21
title Reverter Otimizacoes para SSD
color 0A
echo ==============================
echo REVERTENDO OTIMIZACOES PARA SSD
echo ==============================
echo.
echo 1. Ativar desfragmentacao automatica
echo 2. Desabilitar TRIM
echo 3. Desativar cache de gravacao no SSD
echo 4. Restaurar configuracoes de energia
echo 5. Reativar arquivo de paginacao
echo 6. Ativar logs de eventos
echo 7. Ativar hibernacao
echo 8. Reativar indexacao
echo 9. Restaurar pasta TEMP ao padrao
echo 10. Ativar Superfetch (SysMain)
echo.
set /p escolha="Escolha a opcao para reverter ou digite T para todas: "

if "%escolha%"=="T" goto todas
if "%escolha%"=="1" goto desfragmentacao
if "%escolha%"=="2" goto trim
if "%escolha%"=="3" goto cache
if "%escolha%"=="4" goto energia
if "%escolha%"=="5" goto paginacao
if "%escolha%"=="6" goto logs
if "%escolha%"=="7" goto hibernacao
if "%escolha%"=="8" goto indexacao
if "%escolha%"=="9" goto temp
if "%escolha%"=="10" goto superfetch
goto end

:todas
call :desfragmentacao
call :trim
call :cache
call :energia
call :paginacao
call :logs
call :hibernacao
call :indexacao
call :temp
call :superfetch
goto end

:desfragmentacao
echo Reativando a desfragmentacao automatica...
schtasks /Change /TN "\Microsoft\Windows\Defrag\ScheduledDefrag" /ENABLE
echo Desfragmentacao automatica reativada!
pause
goto end

:trim
echo Desativando TRIM...
fsutil behavior set DisableDeleteNotify 1
echo TRIM desativado!
pause
goto end

:cache
echo Desativando cache de gravacao no SSD...
wmic diskdrive where "MediaType='Fixed hard disk media'" set CacheEnabled=false
echo Cache de gravacao desativado!
pause
goto end

:energia
echo Restaurando configuracoes de energia para o padrao...
powercfg -restoredefaultschemes
echo Configuracoes de energia restauradas!
pause
goto end

:paginacao
echo Reativando o arquivo de paginacao...
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=True
echo Arquivo de paginacao reativado!
pause
goto end

:logs
echo Reativando logs de eventos...
wevtutil set-log Security /rt:true
wevtutil set-log System /rt:true
wevtutil set-log Application /rt:true
echo Logs de eventos reativados!
pause
goto end

:hibernacao
echo Reativando hibernacao...
powercfg -h on
echo Hibernacao reativada!
pause
goto end

:indexacao
echo Reativando indexacao...
sc config WSearch start= auto
net start WSearch
echo Indexacao reativada!
pause
goto end

:temp
echo Restaurando pasta TEMP para o padrao...
setx TEMP "%USERPROFILE%\AppData\Local\Temp"
setx TMP "%USERPROFILE%\AppData\Local\Temp"
echo Pasta TEMP restaurada!
pause
goto end

:superfetch
echo Reativando Superfetch (SysMain)...
sc config SysMain start= auto
net start SysMain
echo Superfetch reativado!
pause
goto end

:end
echo Todas as opcoes foram processadas.
pause
exit
