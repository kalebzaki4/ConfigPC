@echo off

Reg.exe delete "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /f 
Reg.exe delete "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /f 
Reg.exe delete "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /f 
Reg.exe delete "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /f 
Reg.exe delete "HKCU\Control Panel\Accessibility\Keyboard Response" /v "DelayBeforeAcceptance" /f 
Reg.exe delete "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last BounceKey Setting" /f 
Reg.exe delete "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Delay" /f 
Reg.exe delete "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Repeat" /f 
Reg.exe delete "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Last Valid Wait" /f 

pause
