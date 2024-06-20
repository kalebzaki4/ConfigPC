@echo off
:: Desligando conservação de energia durante jogos da NVIDIA
:: Por Kaleb

for /f %%a in ('wmic path Win32_VideoController get PNPDeviceID^| findstr /L "PCI\VEN_"') do (
    for /f "tokens=3" %%b in ('reg query "HKLM\SYSTEM\ControlSet001\Enum\%%a" /v "Driver"') do (
        for /f %%c in ('echo %%b ^| findstr "{"') do (
            Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Class\%%c" /v "DisableDynamicPstate" /t REG_DWORD /d "1" /f
        )
    )
)

:: Utilizando metodo antigo do sharpness, sem upscaling
:: Por Kaleb

Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\FTS" /v "EnableGR535" /t REG_DWORD /d "0" /f

pause & exit /b