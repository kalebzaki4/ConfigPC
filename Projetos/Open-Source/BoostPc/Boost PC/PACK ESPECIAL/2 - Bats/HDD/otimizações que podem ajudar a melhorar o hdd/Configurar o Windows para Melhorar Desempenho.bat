@echo off
mode con: cols=73 lines=21
title Otimização para HDD e Desempenho Geral
color 1F

:menu
cls
echo		=======================================================
echo				 OTM PARA HDD E WINDOWS
echo		=======================================================
echo.
echo			    Escolha uma das opcoes abaixo:
echo.
echo			[1] Ajustar o atraso de menus
echo			[2] Priorizar desempenho no Windows
echo			[3] Aplicar configuracoes globais de desempenho
echo			[4] Ler impacto geral das otimizacoes
echo			[5] Reverter configuracoes feitas
echo			[6] Sair
echo.
set /p escolha=Digite sua opcao: 

if "%escolha%"=="1" goto ajusta_menu
if "%escolha%"=="2" goto prioriza_desempenho
if "%escolha%"=="3" goto configura_desempenho
if "%escolha%"=="4" goto impacto_geral
if "%escolha%"=="5" goto reverter
if "%escolha%"=="6" exit
goto menu

:ajusta_menu
echo Ajustando o atraso de menus para 0 ms...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f
echo Feito! O atraso dos menus foi eliminado.
pause
goto menu

:prioriza_desempenho
echo Priorizando desempenho no Windows...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 2 /f
echo Feito! A maioria dos efeitos visuais foi desativada para melhorar o desempenho.
pause
goto menu

:configura_desempenho
echo Aplicando configuracoes globais de desempenho...
reg add "HKEY_CURRENT_USER\Control Panel\Performance" /v "PerformanceOptions" /t REG_DWORD /d 2 /f
echo Feito! As configuracoes foram ajustadas para priorizar o desempenho.
pause
goto menu

:impacto_geral
cls
echo ===================================================
echo            IMPACTO GERAL DAS OTIMIZACOES
echo ===================================================
echo.
echo 1. Reducao no uso de recursos:
echo    - Animacoes, transicoes e efeitos visuais consomem
echo      CPU, GPU e memoria. Essas alteracoes liberam
echo      esses recursos para tarefas mais importantes.
echo.
echo 2. Sistema mais responsivo:
echo    - Elimina atrasos e reduz o tempo de resposta ao
echo      abrir menus ou janelas.
echo.
echo 3. Ideal para:
echo    - PCs com HDD, CPUs antigas ou pouca memoria RAM.
echo    - Em sistemas modernos, o impacto pode ser menor.
echo.
echo 4. Consideracoes gerais:
echo    - As configuracoes feitas aqui nao comprometem
echo      a funcionalidade do sistema.
echo    - Em alguns PCs, especialmente com Windows 11,
echo      a experiencia visual pode ser reduzida.
echo    - Use essas otimizacoes em PCs que priorizam 
echo      desempenho acima de estetica.
echo.
echo ===================================================
pause
goto menu

:reverter
cls
echo Revertendo configuracoes feitas...
echo.
echo Restaurando atraso de menus...
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 400 /f

echo Restaurando efeitos visuais para padrao...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d 1 /f

echo Restaurando configuracoes globais de desempenho...
reg add "HKEY_CURRENT_USER\Control Panel\Performance" /v "PerformanceOptions" /t REG_DWORD /d 1 /f

echo Todas as configuracoes foram revertidas para os padroes do Windows.
pause
goto menu
