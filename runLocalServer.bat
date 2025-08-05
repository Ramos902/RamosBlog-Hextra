@echo off
echo Iniciando servidor Hugo local...

REM Rodar Hugo com baseURL para localhost e sem porta extra
hugo server --baseURL="http://localhost:1313" --appendPort=false

echo Servidor Hugo parado.
pause
