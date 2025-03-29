@echo off
:: Verifica se o script está sendo executado como administrador
openfiles >nul 2>&1 || (
    echo Por favor, execute este script como administrador.
    pause
    exit /b
)

title 🚀 Limpeza Completa do PC - Turbo 🚀
color 0D
cls

echo ==================================================
echo        💜 LIMPEZA COMPLETA DO SISTEMA 💜
echo ==================================================
echo.

:: Arte ASCII personalizada
echo  *******   **    ** **     ** ********     **     **   ** **
echo /**////** //**  ** /**    /**//////**     ****   /**  ** /**
echo /**   /**  //****  /**    /**     **     **//**  /** **  /**
echo /*******    //**   /**    /**    **     **  //** /****   /**
echo /**///**     /**   /**    /**   **     **********/**/**  /**
echo /**  //**    /**   /**    /**  **     /**//////**/**//** /**
echo /**   //**   /**   //*******  ********/**     /**/** //**/**
echo //     //    //     ///////  //////// //      // //   // //
echo.

:: Fechar processos desnecessários antes da limpeza
echo 🔴 Fechando processos desnecessários...
for %%P in (OneDrive.exe steam.exe Discord.exe chrome.exe firefox.exe msedge.exe) do (
    taskkill /F /IM %%P >nul 2>&1
)

echo ==================================================
echo        🔥 INICIANDO A LIMPEZA 🔥
echo ==================================================

:: Limpeza de arquivos temporários e logs
echo 🧹 Limpando arquivos temporários...
for %%D in ("%temp%" "C:\Windows\Temp" "C:\Users\%USERNAME%\AppData\Local\Temp") do (
    del /s /q "%%D\*.*" >nul 2>&1
)

:: Limpeza de logs do sistema e do Windows Defender
echo 📝 Limpando logs do sistema...
for %%L in ("C:\Windows\System32\winevt\Logs" "C:\Windows\System32\LogFiles" "C:\Windows\System32\wbem\Logs" "C:\ProgramData\Microsoft\Windows Defender\Scans") do (
    del /s /q "%%L\*.*" >nul 2>&1
)

:: Limpeza de arquivos do Windows Update
echo 🌍 Limpando arquivos do Windows Update...
net stop wuauserv >nul 2>&1
net stop bits >nul 2>&1
for %%U in ("C:\Windows\SoftwareDistribution\Download" "C:\Windows\SoftwareDistribution\DataStore\Logs") do (
    del /s /q "%%U\*.*" >nul 2>&1
)
net start wuauserv >nul 2>&1
net start bits >nul 2>&1

:: Limpeza de caches do sistema
echo 💾 Limpando caches do sistema...
for %%C in ("C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer" "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Fonts") do (
    del /s /q "%%C\*.*" >nul 2>&1
)

:: 🔥 OTIMIZAÇÃO PARA O FORTNITE 🔥
echo 🎮 Verificando se Fortnite já está em execução...

:fortnite_check
tasklist | findstr /I "FortniteClient-Win64-Shipping.exe" >nul
if %errorlevel% equ 0 (
    echo ✅ Fortnite detectado! Aplicando otimizações...
    goto fortnite_boost
)

tasklist | findstr /I "FortniteLauncher.exe" >nul
if %errorlevel% equ 0 (
    echo ✅ Fortnite detectado pelo Launcher! Aplicando otimizações...
    goto fortnite_boost
)

echo ⏳ Aguardando Fortnite ser iniciado...
timeout /t 5 >nul
goto fortnite_check

:fortnite_boost
:: Aumentar prioridade do processo do Fortnite
echo 🚀 Definindo prioridade máxima para Fortnite...
wmic process where name="FortniteClient-Win64-Shipping.exe" CALL setpriority 128 >nul 2>&1

:: Liberar memória RAM antes de iniciar
echo 💾 Liberando memória RAM...
wmic os get FreePhysicalMemory,FreeVirtualMemory /format:list

:: Desativar serviços desnecessários
echo ⚙️ Desativando serviços desnecessários temporariamente...
net stop "SysMain" >nul 2>&1
net stop "WSearch" >nul 2>&1
net stop "XboxGipSvc" >nul 2>&1
net stop "XboxNetApiSvc" >nul 2>&1

:: Aplicar otimizações de rede
echo 🌍 Aplicando otimizações de rede...
netsh int tcp set global autotuninglevel=normal
netsh int tcp set global rss=enabled
netsh int tcp set global chimney=enabled
netsh int tcp set global dca=enabled
netsh interface tcp set global timestamps=disabled
netsh interface ipv4 set subinterface "Wi-Fi" mtu=1500 store=persistent

:: Monitorar se Fortnite fecha
:monitor_fortnite
tasklist | findstr /I "FortniteClient-Win64-Shipping.exe" >nul
if %errorlevel% equ 0 (
    timeout /t 10 >nul
    goto monitor_fortnite
)

:: Restaurar serviços após o Fortnite fechar
echo 🎮 Fortnite foi fechado. Restaurando sistema...
net start "SysMain" >nul 2>&1
net start "WSearch" >nul 2>&1
net start "XboxGipSvc" >nul 2>&1
net start "XboxNetApiSvc" >nul 2>&1

:: Reiniciar Explorer para estabilidade
echo 🔄 Reiniciando Explorer...
start explorer.exe

echo.
echo ==================================================
echo        ✅ LIMPEZA E OTIMIZAÇÃO CONCLUÍDA ✅
echo ==================================================
pause
exit
