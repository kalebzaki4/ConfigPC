@echo off
mode con: cols=68 lines=14
color 1F
title Reverter Otimizações de Aplicativos e Configurações
cls

echo		===============================================
echo			  MENU DE REVERSÃO DE OTMS
echo		===============================================
echo     1. Reverter apps removidos (Cortana, Xbox, Store, etc.)
echo     2. Reverter alterações no Windows Copilot e Cortana
echo     3. Sair
echo		===============================================

set /p option="Escolha de 1 à 3: "

if "%option%"=="1" goto revert_apps
if "%option%"=="2" goto revert_cortana_copilot
if "%option%"=="3" exit

:revert_apps
echo Revertendo remoção de pacotes de aplicativos...
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Windows.Cortana_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.officehub_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.WindowsStore_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.XboxApp_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Photos_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Phone_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.People_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Music_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Messaging_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Maps_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Groove_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.GetStarted_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Calendar_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Calculator_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Alarms_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.3DBuilder_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.Camera_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.News_*\AppxManifest.xml"
powershell -Command "Add-AppxPackage -register C:\Program Files\WindowsApps\Microsoft.OneDrive_*\AppxManifest.xml"
echo Pacotes de aplicativos revertidos com sucesso.
pause
goto menu

:revert_cortana_copilot
echo Revertendo alterações no Windows Copilot e Cortana...
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCopilotButton /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Copilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v HideCopilotButton /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v "AllowCortana" /t REG_DWORD /d 1 /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SystemPaneSuggestionsEnabled" /t REG_DWORD /d 1 /f
echo Configurações de Cortana e Copilot revertidas com sucesso.
pause
goto menu

:menu
cls
echo ================================
echo     MENU DE REVERSÃO DE OTIMIZAÇÕES
echo ================================
echo 1. Reverter remoção de pacotes de aplicativos (Cortana, Xbox, Store, etc.)
echo 2. Reverter alterações no Windows Copilot e Cortana
echo 3. Sair
echo ================================

set /p option="Escolha uma opção (1-3): "

if "%option%"=="1" goto revert_apps
if "%option%"=="2" goto revert_cortana_copilot
if "%option%"=="3" exit
