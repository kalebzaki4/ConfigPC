@echo off
echo Ajustando o gerenciamento de energia do SSD...
powercfg -change -disk-timeout-ac 0
powercfg -change -disk-timeout-dc 0
echo Configuracao de energia ajustada para SSDs!
pause
