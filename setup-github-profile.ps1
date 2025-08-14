# Script para configurar o perfil GitHub do William Loyola (@dooficki)
# Execute este script no PowerShell como administrador

Write-Host "Configurando perfil GitHub profissional para William Loyola (@dooficki)" -ForegroundColor Green
Write-Host ""

# Verificar se o Git está instalado
try {
    $gitVersion = git --version
    Write-Host "Git encontrado: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "Git nao encontrado. Por favor, instale o Git primeiro." -ForegroundColor Red
    Write-Host "Download: https://git-scm.com/downloads" -ForegroundColor Yellow
    exit 1
}

# Verificar se o GitHub CLI está instalado (opcional)
try {
    $ghVersion = gh --version
    Write-Host "GitHub CLI encontrado: $ghVersion" -ForegroundColor Green
} catch {
    Write-Host "GitHub CLI nao encontrado. Voce precisara criar o repositorio manualmente." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Passos para configurar seu perfil GitHub:" -ForegroundColor Cyan
Write-Host ""

# 1. Inicializar repositório Git
Write-Host "1. Inicializando repositorio Git..." -ForegroundColor Yellow
git init

# 2. Adicionar arquivos
Write-Host "2. Adicionando arquivos..." -ForegroundColor Yellow
git add .

# 3. Fazer commit inicial
Write-Host "3. Fazendo commit inicial..." -ForegroundColor Yellow
git commit -m "Adicionando perfil GitHub profissional - William Loyola"

Write-Host ""
Write-Host "Repositorio local configurado com sucesso!" -ForegroundColor Green
Write-Host ""

# Instruções para o usuário
Write-Host "PROXIMOS PASSOS:" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Vá para https://github.com/new" -ForegroundColor White
Write-Host "2. Crie um repositório chamado 'dooficki' (mesmo nome do seu usuário)" -ForegroundColor White
Write-Host "3. NÃO inicialize com README, .gitignore ou license" -ForegroundColor White
Write-Host "4. Execute os comandos abaixo:" -ForegroundColor White
Write-Host ""

Write-Host "Conectar ao repositorio remoto:" -ForegroundColor Yellow
Write-Host "git remote add origin https://github.com/dooficki/dooficki.git" -ForegroundColor Gray
Write-Host ""

Write-Host "Enviar para o GitHub:" -ForegroundColor Yellow
Write-Host "git push -u origin main" -ForegroundColor Gray
Write-Host ""

Write-Host "Apos isso, seu perfil estara disponivel em:" -ForegroundColor Green
Write-Host "https://github.com/dooficki" -ForegroundColor Cyan
Write-Host ""

Write-Host "DICAS:" -ForegroundColor Cyan
Write-Host "- Atualize o numero do WhatsApp no README.md" -ForegroundColor White
Write-Host "- Adicione screenshots dos seus projetos" -ForegroundColor White
Write-Host "- Mantenha o perfil sempre atualizado" -ForegroundColor White
Write-Host ""

Write-Host "Perfil configurado com sucesso! Boa sorte, William!" -ForegroundColor Green
