@echo off
OTIMIZANDO MEMORIA RAM
echo Otimizando memoria RAM (encerrando processos inativos...)
for /f "tokens=1 delims=," %%i in ('tasklist /fi "memusage gt 50000" /nh /fo csv') do taskkill /f /im %%i > nul 2>&1
echo Processos de alto consumo encerrados com sucesso.
pause
exit
