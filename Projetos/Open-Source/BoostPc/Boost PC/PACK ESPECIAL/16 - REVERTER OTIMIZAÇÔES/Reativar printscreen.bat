@echo off
echo Reativando a função PrintScreen...

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableSnippingTool" /f
reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "DisableSnippingTool" /f

taskkill /f /im explorer.exe
start explorer.exe

echo PrintScreen reativado com sucesso!
pause
