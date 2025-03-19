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

:: Parar processos desnecessários antes da limpeza
echo 🔴 Fechando processos desnecessários...
for %%P in (OneDrive.exe steam.exe Discord.exe chrome.exe opera.exe firefox.exe msedge.exe) do (
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

:: Limpeza de relatórios de erros do Windows
echo ❌ Limpando relatórios de erros do Windows...
for %%E in ("C:\ProgramData\Microsoft\Windows\WER\ReportQueue" "C:\ProgramData\Microsoft\Windows\WER\Temp" "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\WER") do (
    del /s /q "%%E\*.*" >nul 2>&1
)

:: Limpeza de caches do sistema
echo 💾 Limpando caches do sistema...
for %%C in ("C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Explorer" "C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Fonts") do (
    del /s /q "%%C\*.*" >nul 2>&1
)

:: Limpeza de cache de navegadores
echo 🌐 Limpando cache dos navegadores...
for %%B in (
    "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Cache"
    "C:\Users\%USERNAME%\AppData\Local\Microsoft\Edge\User Data\Default\Cache"
    "C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles\*.default-release\cache2\entries"
    "C:\Users\%USERNAME%\AppData\Local\Opera Software\Opera Stable\Cache"
) do (
    del /s /q "%%B\*.*" >nul 2>&1
)

:: Limpeza de backups antigos do Windows
echo ⏳ Limpando backups antigos do Windows...
vssadmin delete shadows /for=C: /all /quiet >nul 2>&1

:: Limpeza de arquivos de erro do Windows
echo ⚠️ Limpando arquivos de erro do sistema...
for %%F in ("C:\Windows\Minidump" "C:\Windows\memory.dmp") do (
    del /s /q "%%F\*.*" >nul 2>&1
)

:: Limpeza de restos de instalações antigas do Windows
echo 🏚️ Limpando restos de instalações antigas do Windows...
if exist "C:\Windows.old" (
    del /s /q "C:\Windows.old\*.*" >nul 2>&1
)

:: Limpeza do OneDrive
echo ☁️ Limpando arquivos temporários do OneDrive...
for %%O in ("C:\Users\%USERNAME%\OneDrive\*.tmp" "C:\Users\%USERNAME%\OneDrive\*.log") do (
    del /s /q "%%O" >nul 2>&1
)

:: Verificação de erros no disco SEM TRAVAR O SISTEMA
echo 🛠️ Verificando erros no disco...
chkdsk C: /scan
if %errorlevel% neq 0 (
    echo 🚨 Erros detectados no disco! A verificacao completa sera agendada para a proxima reinicializacao.
    echo Pressione qualquer tecla para agendar a verificacao completa do disco...
    pause
    chkdsk C: /F /R /X
)

:: Reiniciar processos essenciais
echo 🔄 Reiniciando Explorer...
start explorer.exe

echo.
echo ==================================================
echo        ✅ LIMPEZA CONCLUÍDA COM SUCESSO ✅
echo ==================================================
pause
