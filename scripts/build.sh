#!/bin/bash

# ===================================================================
# 🔨 SCRIPT DE COMPILAÇÃO PARA TEMPLATE ABNT LATEX
# ===================================================================
# Baseado em: https://git.sr.ht/~tpapastylianou/a-tidy-latex-project-template
# Compilação automática com limpeza e verificação de erros
# ===================================================================

# Cores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configurações
MAIN_FILE="template/main.tex"
OUTPUT_DIR="output"
TEMP_DIR="temp"

# Função para exibir mensagens
print_step() {
    echo -e "${BLUE}🔨 $1${NC}"
}

print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

# Função para limpeza
cleanup() {
    print_step "Limpando arquivos temporários..."
    
    # Remove arquivos temporários do LaTeX
    find . -name "*.aux" -delete
    find . -name "*.log" -delete
    find . -name "*.bbl" -delete
    find . -name "*.blg" -delete
    find . -name "*.fdb_latexmk" -delete
    find . -name "*.fls" -delete
    find . -name "*.synctex.gz" -delete
    find . -name "*.toc" -delete
    find . -name "*.lof" -delete
    find . -name "*.lot" -delete
    find . -name "*.out" -delete
    find . -name "*.bcf" -delete
    find . -name "*.run.xml" -delete
    find . -name "*.nav" -delete
    find . -name "*.snm" -delete
    find . -name "*.vrb" -delete
    
    # Remove diretório temporário se existir
    if [ -d "$TEMP_DIR" ]; then
        rm -rf "$TEMP_DIR"
    fi
    
    print_success "Limpeza concluída!"
}

# Função para verificar dependências
check_dependencies() {
    print_step "Verificando dependências..."
    
    if ! command -v pdflatex &> /dev/null; then
        print_error "pdflatex não encontrado! Instale uma distribuição LaTeX (TeX Live, MiKTeX)"
        exit 1
    fi
    
    if ! command -v bibtex &> /dev/null; then
        print_warning "bibtex não encontrado! Citações podem não funcionar corretamente"
    fi
    
    print_success "Dependências verificadas!"
}

# Função para compilação completa
compile_full() {
    print_step "Iniciando compilação completa..."
    
    # Cria diretório de output se não existir
    mkdir -p "$OUTPUT_DIR"
    
    # Primeira compilação (gera .aux)
    print_step "Primeira passada (estrutura)..."
    pdflatex -output-directory="$OUTPUT_DIR" -interaction=nonstopmode "$MAIN_FILE"
    
    if [ $? -ne 0 ]; then
        print_error "Erro na primeira compilação! Verifique o arquivo .log"
        return 1
    fi
    
    # Compilação da bibliografia (se existir referencias.bib)
    if [ -f "template/referencias.bib" ]; then
        print_step "Processando bibliografia..."
        cd "$OUTPUT_DIR"
        bibtex main
        cd ..
        
        if [ $? -ne 0 ]; then
            print_warning "Erro na compilação da bibliografia. Continuando..."
        fi
    fi
    
    # Segunda compilação (resolve referências)
    print_step "Segunda passada (referências)..."
    pdflatex -output-directory="$OUTPUT_DIR" -interaction=nonstopmode "$MAIN_FILE"
    
    # Terceira compilação (finaliza referências cruzadas)
    print_step "Terceira passada (finalização)..."
    pdflatex -output-directory="$OUTPUT_DIR" -interaction=nonstopmode "$MAIN_FILE"
    
    if [ $? -eq 0 ]; then
        print_success "Compilação concluída com sucesso!"
        
        # Move PDF para raiz se desejado
        if [ -f "$OUTPUT_DIR/main.pdf" ]; then
            cp "$OUTPUT_DIR/main.pdf" "documento_compilado.pdf"
            print_success "PDF disponível em: documento_compilado.pdf"
        fi
        
        return 0
    else
        print_error "Erro na compilação final!"
        return 1
    fi
}

# Função para compilação rápida (apenas uma passada)
compile_quick() {
    print_step "Compilação rápida..."
    
    mkdir -p "$OUTPUT_DIR"
    pdflatex -output-directory="$OUTPUT_DIR" -interaction=nonstopmode "$MAIN_FILE"
    
    if [ $? -eq 0 ]; then
        print_success "Compilação rápida concluída!"
        
        if [ -f "$OUTPUT_DIR/main.pdf" ]; then
            cp "$OUTPUT_DIR/main.pdf" "documento_compilado.pdf"
            print_success "PDF disponível em: documento_compilado.pdf"
        fi
    else
        print_error "Erro na compilação rápida!"
        return 1
    fi
}

# Função para mostrar estatísticas
show_stats() {
    if [ -f "$OUTPUT_DIR/main.log" ]; then
        print_step "Estatísticas do documento:"
        
        # Conta páginas
        pages=$(grep "Output written on" "$OUTPUT_DIR/main.log" | grep -o '[0-9]* page' | grep -o '[0-9]*')
        if [ ! -z "$pages" ]; then
            echo "📄 Páginas: $pages"
        fi
        
        # Verifica warnings
        warnings=$(grep -c "Warning" "$OUTPUT_DIR/main.log" 2>/dev/null || echo "0")
        echo "⚠️  Warnings: $warnings"
        
        # Verifica errors
        errors=$(grep -c "Error" "$OUTPUT_DIR/main.log" 2>/dev/null || echo "0")
        echo "❌ Errors: $errors"
        
        # Mostra algumas estatísticas úteis
        if command -v pdfinfo &> /dev/null && [ -f "documento_compilado.pdf" ]; then
            echo "📊 Informações do PDF:"
            pdfinfo "documento_compilado.pdf" | grep -E "(Pages|File size|PDF version)"
        fi
    fi
}

# Função para abrir PDF (se possível)
open_pdf() {
    if [ -f "documento_compilado.pdf" ]; then
        print_step "Tentando abrir PDF..."
        
        # Linux
        if command -v xdg-open &> /dev/null; then
            xdg-open "documento_compilado.pdf" &
        # macOS
        elif command -v open &> /dev/null; then
            open "documento_compilado.pdf" &
        # Windows (Git Bash)
        elif command -v start &> /dev/null; then
            start "documento_compilado.pdf" &
        else
            print_warning "Não foi possível abrir automaticamente. PDF em: documento_compilado.pdf"
        fi
    fi
}

# Função de ajuda
show_help() {
    echo -e "${BLUE}🔨 Script de Compilação - Template ABNT LaTeX${NC}"
    echo ""
    echo "Uso: $0 [OPÇÃO]"
    echo ""
    echo "Opções:"
    echo "  build, compile     Compilação completa (3 passadas + bibliografia)"
    echo "  quick             Compilação rápida (1 passada)"
    echo "  clean             Limpar arquivos temporários"
    echo "  watch             Modo observação (recompila automaticamente)"
    echo "  stats             Mostrar estatísticas do documento"
    echo "  open              Abrir PDF compilado"
    echo "  help              Mostrar esta ajuda"
    echo ""
    echo "Exemplos:"
    echo "  $0 build          # Compilação completa"
    echo "  $0 quick          # Compilação rápida para teste"
    echo "  $0 clean          # Limpar antes de commit no Git"
}

# Modo observação (recompila quando arquivos mudam)
watch_mode() {
    print_step "Modo observação ativado. Pressione Ctrl+C para sair."
    print_warning "Monitorando alterações em arquivos .tex e .bib..."
    
    if ! command -v inotifywait &> /dev/null; then
        print_error "inotify-tools não encontrado! Instale com: sudo apt install inotify-tools"
        exit 1
    fi
    
    while true; do
        inotifywait -e modify -r --include='.*\.(tex|bib)$' . 2>/dev/null
        print_step "Arquivo modificado! Recompilando..."
        compile_quick
        echo ""
    done
}

# Verifica se arquivo principal existe
if [ ! -f "$MAIN_FILE" ]; then
    print_error "Arquivo principal não encontrado: $MAIN_FILE"
    print_warning "Certifique-se de estar na raiz do projeto!"
    exit 1
fi

# Processa argumentos
case "${1:-build}" in
    "build"|"compile")
        check_dependencies
        compile_full
        show_stats
        ;;
    "quick")
        check_dependencies
        compile_quick
        ;;
    "clean")
        cleanup
        ;;
    "watch")
        check_dependencies
        watch_mode
        ;;
    "stats")
        show_stats
        ;;
    "open")
        open_pdf
        ;;
    "help"|"-h"|"--help")
        show_help
        ;;
    *)
        print_error "Opção inválida: $1"
        echo ""
        show_help
        exit 1
        ;;
esac

exit 0 