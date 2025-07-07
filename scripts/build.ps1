# ===================================================================
# 🔨 SCRIPT DE COMPILAÇÃO PARA TEMPLATE ABNT LATEX (Windows)
# ===================================================================
# Versão PowerShell do script de compilação
# Baseado em melhores práticas de projetos LaTeX acadêmicos
# ===================================================================

param(
    [Parameter(Position=0)]
    [ValidateSet("build", "compile", "quick", "clean", "watch", "stats", "open", "help")]
    [string]$Action = "build"
)

# Configurações
$MainFile = "template\main.tex"
$OutputDir = "output"
$TempDir = "temp"

# Função para exibir mensagens coloridas
function Write-Step {
    param([string]$Message)
    Write-Host "🔨 $Message" -ForegroundColor Blue
}

function Write-Success {
    param([string]$Message)
    Write-Host "✅ $Message" -ForegroundColor Green
}

function Write-Warning {
    param([string]$Message)
    Write-Host "⚠️  $Message" -ForegroundColor Yellow
}

function Write-Error {
    param([string]$Message)
    Write-Host "❌ $Message" -ForegroundColor Red
}

# Função para limpeza
function Invoke-Cleanup {
    Write-Step "Limpando arquivos temporários..."
    
    # Remove arquivos temporários do LaTeX
    $extensions = @("*.aux", "*.log", "*.bbl", "*.blg", "*.fdb_latexmk", 
                   "*.fls", "*.synctex.gz", "*.toc", "*.lof", "*.lot", 
                   "*.out", "*.bcf", "*.run.xml", "*.nav", "*.snm", "*.vrb")
    
    foreach ($ext in $extensions) {
        Get-ChildItem -Recurse -Name $ext | Remove-Item -Force -ErrorAction SilentlyContinue
    }
    
    # Remove diretório temporário se existir
    if (Test-Path $TempDir) {
        Remove-Item -Recurse -Force $TempDir
    }
    
    Write-Success "Limpeza concluída!"
}

# Função para verificar dependências
function Test-Dependencies {
    Write-Step "Verificando dependências..."
    
    if (-not (Get-Command pdflatex -ErrorAction SilentlyContinue)) {
        Write-Error "pdflatex não encontrado! Instale MiKTeX ou TeX Live"
        exit 1
    }
    
    if (-not (Get-Command bibtex -ErrorAction SilentlyContinue)) {
        Write-Warning "bibtex não encontrado! Citações podem não funcionar corretamente"
    }
    
    Write-Success "Dependências verificadas!"
}

# Função para compilação completa
function Invoke-FullCompile {
    Write-Step "Iniciando compilação completa..."
    
    # Cria diretório de output se não existir
    if (-not (Test-Path $OutputDir)) {
        New-Item -ItemType Directory -Path $OutputDir | Out-Null
    }
    
    # Primeira compilação (gera .aux)
    Write-Step "Primeira passada (estrutura)..."
    $result = Start-Process -FilePath "pdflatex" -ArgumentList "-output-directory=$OutputDir", "-interaction=nonstopmode", $MainFile -Wait -PassThru -NoNewWindow
    
    if ($result.ExitCode -ne 0) {
        Write-Error "Erro na primeira compilação! Verifique o arquivo .log"
        return $false
    }
    
    # Compilação da bibliografia (se existir referencias.bib)
    if (Test-Path "template\referencias.bib") {
        Write-Step "Processando bibliografia..."
        Push-Location $OutputDir
        $result = Start-Process -FilePath "bibtex" -ArgumentList "main" -Wait -PassThru -NoNewWindow
        Pop-Location
        
        if ($result.ExitCode -ne 0) {
            Write-Warning "Erro na compilação da bibliografia. Continuando..."
        }
    }
    
    # Segunda compilação (resolve referências)
    Write-Step "Segunda passada (referências)..."
    Start-Process -FilePath "pdflatex" -ArgumentList "-output-directory=$OutputDir", "-interaction=nonstopmode", $MainFile -Wait -NoNewWindow | Out-Null
    
    # Terceira compilação (finaliza referências cruzadas)
    Write-Step "Terceira passada (finalização)..."
    $result = Start-Process -FilePath "pdflatex" -ArgumentList "-output-directory=$OutputDir", "-interaction=nonstopmode", $MainFile -Wait -PassThru -NoNewWindow
    
    if ($result.ExitCode -eq 0) {
        Write-Success "Compilação concluída com sucesso!"
        
        # Copia PDF para raiz se existir
        if (Test-Path "$OutputDir\main.pdf") {
            Copy-Item "$OutputDir\main.pdf" "documento_compilado.pdf"
            Write-Success "PDF disponível em: documento_compilado.pdf"
        }
        
        return $true
    } else {
        Write-Error "Erro na compilação final!"
        return $false
    }
}

# Função para compilação rápida
function Invoke-QuickCompile {
    Write-Step "Compilação rápida..."
    
    if (-not (Test-Path $OutputDir)) {
        New-Item -ItemType Directory -Path $OutputDir | Out-Null
    }
    
    $result = Start-Process -FilePath "pdflatex" -ArgumentList "-output-directory=$OutputDir", "-interaction=nonstopmode", $MainFile -Wait -PassThru -NoNewWindow
    
    if ($result.ExitCode -eq 0) {
        Write-Success "Compilação rápida concluída!"
        
        if (Test-Path "$OutputDir\main.pdf") {
            Copy-Item "$OutputDir\main.pdf" "documento_compilado.pdf"
            Write-Success "PDF disponível em: documento_compilado.pdf"
        }
        return $true
    } else {
        Write-Error "Erro na compilação rápida!"
        return $false
    }
}

# Função para mostrar estatísticas
function Show-Stats {
    if (Test-Path "$OutputDir\main.log") {
        Write-Step "Estatísticas do documento:"
        
        $logContent = Get-Content "$OutputDir\main.log"
        
        # Conta páginas
        $pageMatch = $logContent | Select-String "Output written on.*\((\d+) page"
        if ($pageMatch) {
            $pages = $pageMatch.Matches[0].Groups[1].Value
            Write-Host "📄 Páginas: $pages"
        }
        
        # Conta warnings e errors
        $warnings = ($logContent | Select-String "Warning").Count
        $errors = ($logContent | Select-String "Error").Count
        
        Write-Host "⚠️  Warnings: $warnings"
        Write-Host "❌ Errors: $errors"
        
        # Informações do PDF se existir
        if (Test-Path "documento_compilado.pdf") {
            $pdfInfo = Get-Item "documento_compilado.pdf"
            Write-Host "📊 Tamanho do arquivo: $([math]::Round($pdfInfo.Length / 1MB, 2)) MB"
        }
    }
}

# Função para abrir PDF
function Open-PDF {
    if (Test-Path "documento_compilado.pdf") {
        Write-Step "Abrindo PDF..."
        Start-Process "documento_compilado.pdf"
    } else {
        Write-Warning "PDF não encontrado. Execute a compilação primeiro."
    }
}

# Função de ajuda
function Show-Help {
    Write-Host "🔨 Script de Compilação - Template ABNT LaTeX (Windows)" -ForegroundColor Blue
    Write-Host ""
    Write-Host "Uso: .\build.ps1 [OPÇÃO]"
    Write-Host ""
    Write-Host "Opções:"
    Write-Host "  build, compile     Compilação completa (3 passadas + bibliografia)"
    Write-Host "  quick             Compilação rápida (1 passada)"
    Write-Host "  clean             Limpar arquivos temporários"
    Write-Host "  stats             Mostrar estatísticas do documento"
    Write-Host "  open              Abrir PDF compilado"
    Write-Host "  help              Mostrar esta ajuda"
    Write-Host ""
    Write-Host "Exemplos:"
    Write-Host "  .\build.ps1 build          # Compilação completa"
    Write-Host "  .\build.ps1 quick          # Compilação rápida para teste"
    Write-Host "  .\build.ps1 clean          # Limpar antes de commit no Git"
}

# Modo observação (Windows)
function Start-WatchMode {
    Write-Step "Modo observação ativado. Pressione Ctrl+C para sair."
    Write-Warning "Monitorando alterações em arquivos .tex e .bib..."
    
    $watcher = New-Object System.IO.FileSystemWatcher
    $watcher.Path = (Get-Location).Path
    $watcher.Filter = "*.*"
    $watcher.IncludeSubdirectories = $true
    $watcher.EnableRaisingEvents = $true
    
    $action = {
        $path = $Event.SourceEventArgs.FullPath
        if ($path -match '\.(tex|bib)$') {
            Write-Step "Arquivo modificado: $path"
            Write-Step "Recompilando..."
            Invoke-QuickCompile
            Write-Host ""
        }
    }
    
    Register-ObjectEvent -InputObject $watcher -EventName "Changed" -Action $action
    
    try {
        while ($true) {
            Start-Sleep 1
        }
    } finally {
        $watcher.Dispose()
    }
}

# Verifica se arquivo principal existe
if (-not (Test-Path $MainFile)) {
    Write-Error "Arquivo principal não encontrado: $MainFile"
    Write-Warning "Certifique-se de estar na raiz do projeto!"
    exit 1
}

# Processa argumentos
switch ($Action) {
    { $_ -in "build", "compile" } {
        Test-Dependencies
        $success = Invoke-FullCompile
        if ($success) { Show-Stats }
    }
    "quick" {
        Test-Dependencies
        Invoke-QuickCompile
    }
    "clean" {
        Invoke-Cleanup
    }
    "watch" {
        Test-Dependencies
        Start-WatchMode
    }
    "stats" {
        Show-Stats
    }
    "open" {
        Open-PDF
    }
    "help" {
        Show-Help
    }
    default {
        Write-Error "Opção inválida: $Action"
        Show-Help
        exit 1
    }
}

exit 0 