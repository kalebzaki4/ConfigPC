@echo off
mode con: cols=64 lines=18
cls
echo.
echo *******************************************************
echo.
echo     ATENCAO: DESABILITANDO O WINDOWS DEFENDER...
echo.
echo    O comando a seguir desativara o Windows Defender,
echo    o que pode ser identificado como um virus por
echo    alguns antivírus. Isso e totalmente normal, pois
echo    o Windows Defender sera apenas desativado temporariamente.
echo.
echo    Caso utilize um antivirus de terceiros, você podera
echo    desativar a verificacao do Windows Defender.
echo.
echo *******************************************************
echo.
echo Deseja continuar e desabilitar o Windows Defender? (S/N)
set /p choice=Digite S para continuar ou N para cancelar:
if /I "%choice%"=="S" (
    echo Desabilitando o Windows Defender...
    reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f
    echo Windows Defender desabilitado com sucesso!
    echo.
    echo O Windows Defender foi desabilitado. Lembre-se de ativar seu antivírus de terceiros para garantir a segurança do seu sistema.
) else (
    echo Cancelado. O Windows Defender permanecerá ativado.
)
pause
