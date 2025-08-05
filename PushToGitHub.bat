@echo off
REM Script para gerar o site Hugo e atualizar no GitHub

REM Mensagem de commit padrão
set "COMMIT_MSG=Atualizacao automatica do site"

REM Se usuário passar argumento, usa ele como mensagem
if not "%1"=="" set "COMMIT_MSG=%*"

echo Gerando site estatico com Hugo...
hugo
if errorlevel 1 (
    echo Erro ao gerar o site. Abortando.
    pause
    exit /b 1
)

echo Adicionando mudancas no Git...
git add .

echo Commitando alteracoes: %COMMIT_MSG%
git commit -m "%COMMIT_MSG%"

echo Enviando para o GitHub...
git push origin main

if errorlevel 1 (
    echo Erro ao enviar para o GitHub.
) else (
    echo Site atualizado com sucesso no GitHub Pages!
)

pause
