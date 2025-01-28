@echo off
title Reinicializar Configuracoes de Rede
color 1F
echo Reiniciando configuracoes de rede...
ipconfig /release
ipconfig /renew
ipconfig /flushdns
netsh winsock reset
echo Configuracoes de rede reiniciadas com sucesso!
pause
exit
