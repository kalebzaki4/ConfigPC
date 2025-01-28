@echo off
mode con: cols=73 lines=21
title Reverter Otimizações
cls

echo ===================================
echo     MENU DE REVERSÃO DE OTMS
echo ===================================
echo 1. Reverter otm de de paginação
echo 2. Reverter otm de gerenciamento de arquivo de paginação
echo 3. Reverter otm de Memory Management
echo 4. Sair
echo ================================

set /p option="Escolha de 1 à 4: "

if "%option%"=="1" goto revert_paginacao
if "%option%"=="2" goto revert_arquivo_paginacao
if "%option%"=="3" goto revert_memory_management
if "%option%"=="4" exit

:revert_paginacao
echo Revertendo otimização de paginação...
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False
echo Otimização de paginação revertida com sucesso.
pause
goto menu

:revert_arquivo_paginacao
echo Revertendo otimização de gerenciamento de arquivo de paginação...
wmic computersystem where name="%computername%" set AutomaticManagedPagefile=False
echo Gerenciamento de arquivo de paginação revertido com sucesso.
pause
goto menu

:revert_memory_management
echo Revertendo otimização de Memory Management...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d 1 /f
echo Otimização de Memory Management revertida com sucesso.
pause
goto menu

:menu
cls
echo ===================================
echo     MENU DE REVERSÃO DE OTMS
echo ===================================
echo 1. Reverter otm de de paginação
echo 2. Reverter otm de gerenciamento de arquivo de paginação
echo 3. Reverter otm de Memory Management
echo 4. Sair
echo ================================

set /p option="Escolha uma opção (1-4): "

if "%option%"=="1" goto revert_paginacao
if "%option%"=="2" goto revert_arquivo_paginacao
if "%option%"=="3" goto revert_memory_management
if "%option%"=="4" exit
