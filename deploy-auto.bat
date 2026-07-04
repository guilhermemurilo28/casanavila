@echo off
cd /d "D:\Casa Lieft Retirinho\casanavila"
echo Criando o projeto casanavila (se ainda nao existir)...
call npx -y wrangler pages project create casanavila --production-branch main
echo.
echo Publicando os arquivos no Cloudflare Pages...
call npx -y wrangler pages deploy . --project-name casanavila --branch main --commit-dirty=true
echo.
echo ===== FIM DO DEPLOY =====
pause
