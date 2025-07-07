# 📁 Estrutura do Projeto - Template ABNT LaTeX

Estrutura organizada seguindo as melhores práticas de projetos LaTeX acadêmicos baseada em recursos como [Glenn J Lea's structure](https://www.glennjlea.com/latex/latex-project_file_structure/), [paperProject](https://github.com/loicdtx/paperProject) e [paper-template](https://github.com/vveitch/paper-template).

## 🏗️ **Estrutura Completa**

```
template-abnt-latex/
├── 📄 README.md                    # Documentação principal
├── 📄 LICENSE                      # Licença MIT
├── 📄 .gitignore                   # Arquivos ignorados pelo Git
├── 📄 CHANGELOG.md                 # Histórico de mudanças
├── 📄 CONTRIBUTING.md              # Guia de contribuição
│
├── 📁 .github/                     # Configurações GitHub
│   └── ISSUE_TEMPLATE/             # Templates para issues
│       ├── bug_report.md
│       ├── feature_request.md
│       └── question.md
│
├── 📁 docs/                        # 📚 Documentação do projeto
│   ├── GUIA_RAPIDO.md             # Como começar em 5 minutos
│   ├── CONFIGURACAO.md            # Configuração detalhada
│   ├── LATEX_BOAS_PRATICAS.md     # Boas práticas LaTeX
│   ├── FAQ.md                     # Perguntas frequentes
│   └── ESTRUTURA_PROJETO.md       # Este arquivo
│
├── 📁 template/                    # 🎯 Código LaTeX principal
│   ├── main.tex                   # Arquivo principal
│   ├── referencias.bib            # Bibliografia
│   ├── config/                    # Configurações LaTeX
│   └── sections/                  # Capítulos/seções separados
│       ├── README.md
│       ├── pre_textuais/          # Resumo, abstract, etc.
│       └── pos_textuais/          # Anexos, apêndices, etc.
│
├── 📁 assets/                      # 🎨 Recursos do projeto
│   ├── images/                    # Imagens e figuras
│   │   ├── README.md
│   │   ├── figuras/               # Figuras principais
│   │   ├── diagramas/             # Diagramas e esquemas
│   │   ├── graficos/              # Gráficos e charts
│   │   └── capturas/              # Screenshots
│   ├── logos/                     # Logos institucionais
│   │   ├── unesp_logo.jpg
│   │   └── igce_brasao.png
│   ├── tables/                    # Dados de tabelas externas
│   └── demo/                      # Exemplos e demonstrações
│
├── 📁 examples/                    # 📊 Exemplos por área
│   ├── exatas/                    # Ciências exatas
│   ├── computacao/                # Computação
│   ├── humanas/                   # Ciências humanas
│   └── saude/                     # Ciências da saúde
│
├── 📁 scripts/                     # 🔧 Scripts auxiliares
│   ├── build.sh                  # Script compilação (Linux/Mac)
│   ├── build.ps1                 # Script compilação (Windows)
│   ├── setup.sh                  # Script configuração inicial
│   └── README.md
│
├── 📁 output/                      # 📄 Arquivos gerados (Git ignore)
│   ├── main.pdf                  # PDF compilado
│   ├── main.aux                  # Arquivos auxiliares
│   └── *.log                     # Logs de compilação
│
└── 📁 temp/                        # 🗂️ Arquivos temporários (Git ignore)
```

## 🎯 **Principais Benefícios**

### **📚 Separação Clara de Responsabilidades**
| Pasta | Função | Baseado em |
|-------|--------|------------|
| `template/` | Código LaTeX principal | [Glenn J Lea structure](https://www.glennjlea.com/latex/latex-project_file_structure/) |
| `assets/` | Recursos visuais | [paperProject](https://github.com/loicdtx/paperProject) |
| `scripts/` | Automação | [tidy latex template](https://git.sr.ht/~tpapastylianou/a-tidy-latex-project-template) |
| `examples/` | Demonstrações | [paper-template](https://github.com/vveitch/paper-template) |

### **🔧 Facilita Colaboração**
- ✅ **Múltiplas pessoas** podem trabalhar simultaneamente
- ✅ **Controle de versão** granular com Git
- ✅ **Organização clara** para novos colaboradores
- ✅ **Separação de concerns** (código vs. recursos)

### **📊 Melhora Manutenção**
- ✅ **Fácil localização** de arquivos específicos
- ✅ **Compilação limpa** em pasta separada
- ✅ **Assets organizados** por tipo/funcionalidade
- ✅ **Scripts automáticos** para tarefas repetitivas

## 📝 **Como Usar Esta Estrutura**

### **1. Projeto Novo**
```bash
# Clone o template
git clone https://github.com/seu-usuario/template-abnt-latex.git meu-trabalho
cd meu-trabalho

# Execute setup (opcional)
./scripts/setup.sh

# Comece a editar
code template/main.tex
```

### **2. Organizar Conteúdo**

**📄 Texto principal:**
```latex
% No main.tex, inclua seções separadas:
\input{sections/01_introducao}
\input{sections/02_fundamentacao}
\input{sections/03_metodologia}
% ...
```

**🖼️ Imagens:**
```latex
% Use caminhos organizados:
\includegraphics[width=0.7\textwidth]{assets/images/figuras/metodologia/fluxograma.pdf}
```

**📚 Bibliografia:**
```latex
% Mantenha no template/referencias.bib
\bibliography{referencias}
```

### **3. Compilação**

**Linux/macOS:**
```bash
./scripts/build.sh build        # Compilação completa
./scripts/build.sh quick        # Compilação rápida
./scripts/build.sh clean        # Limpeza
./scripts/build.sh watch        # Modo observação
```

**Windows:**
```powershell
.\scripts\build.ps1 build       # Compilação completa
.\scripts\build.ps1 quick       # Compilação rápida
.\scripts\build.ps1 clean       # Limpeza
```

## 🎓 **Adaptação por Área do Conhecimento**

### **🔬 Ciências Exatas**
```
assets/images/
├── equacoes/           # Demonstrações matemáticas
├── graficos/           # Plots científicos
├── simulacoes/         # Resultados simulações
└── diagramas/          # Esquemas técnicos

sections/
├── 01_introducao.tex
├── 02_fundamentos_matematicos.tex
├── 03_metodologia_experimental.tex
├── 04_analise_resultados.tex
└── 05_conclusoes.tex
```

### **💻 Computação**
```
assets/images/
├── arquiteturas/       # Diagramas de sistema
├── interfaces/         # Screenshots de UI
├── algoritmos/         # Fluxogramas
└── benchmarks/         # Gráficos performance

sections/
├── 01_introducao.tex
├── 02_trabalhos_relacionados.tex
├── 03_arquitetura_proposta.tex
├── 04_implementacao.tex
├── 05_avaliacao.tex
└── 06_conclusoes.tex
```

### **📚 Ciências Humanas**
```
assets/images/
├── documentos/         # Fontes históricas
├── mapas/             # Mapas conceituais/geográficos
├── infograficos/      # Visualizações qualitativas
└── esquemas/          # Modelos teóricos

sections/
├── 01_introducao.tex
├── 02_referencial_teorico.tex
├── 03_metodologia_qualitativa.tex
├── 04_analise_discussao.tex
└── 05_consideracoes_finais.tex
```

## 🔧 **Personalização da Estrutura**

### **Adicionar nova universidade:**
```
assets/logos/
├── sua_universidade_logo.pdf
└── seu_instituto_brasao.png

template/config/
└── sua_universidade.sty
```

### **Novo tipo de documento:**
```
examples/
└── sua_area/
    ├── template_artigo.tex
    ├── template_relatorio.tex
    └── README.md
```

### **Scripts personalizados:**
```
scripts/
├── backup.sh              # Backup automático
├── word_count.sh           # Contador de palavras
└── bibliography_check.py  # Verificador bibliografia
```

## 📊 **Comparação com Outras Estruturas**

| Característica | Estrutura Simples | Nossa Estrutura | Benefício |
|----------------|-------------------|-----------------|-----------|
| **Organização** | Tudo numa pasta | Pastas especializadas | 🎯 Fácil localização |
| **Colaboração** | Conflitos frequentes | Separação clara | 👥 Trabalho simultâneo |
| **Manutenção** | Difícil encontrar | Estrutura lógica | 🔧 Fácil manutenção |
| **Compilação** | Manual/confusa | Scripts automáticos | ⚡ Processo simplificado |
| **Assets** | Misturado com código | Pasta dedicada | 🎨 Organização visual |

## 🚀 **Migração de Projetos Existentes**

### **De estrutura simples:**
```bash
# 1. Crie nova estrutura
mkdir -p template assets/images scripts

# 2. Mova arquivos
mv *.tex template/
mv *.bib template/
mv *.png *.jpg *.pdf assets/images/

# 3. Ajuste caminhos no LaTeX
# Edite \includegraphics para usar assets/images/
```

### **Do Overleaf:**
1. **Download** do projeto Overleaf
2. **Extraia** arquivos para pastas apropriadas
3. **Ajuste** caminhos de imagens e referências
4. **Teste** compilação com scripts

## 📋 **Checklist de Organização**

### **✅ Estrutura básica**
- [ ] Pasta `template/` com arquivos .tex
- [ ] Pasta `assets/` para recursos
- [ ] Pasta `scripts/` para automação
- [ ] Arquivo `.gitignore` configurado

### **✅ Conteúdo organizado**
- [ ] Capítulos em arquivos separados
- [ ] Imagens categorizadas por tipo
- [ ] Bibliografia centralizada
- [ ] Logos da instituição

### **✅ Workflows funcionais**
- [ ] Scripts de compilação testados
- [ ] Controle de versão configurado
- [ ] Documentação atualizada
- [ ] Backups configurados

## 💡 **Dicas Avançadas**

### **Para projetos grandes:**
- Use **Git LFS** para arquivos binários grandes
- Configure **CI/CD** para compilação automática
- Implemente **testes** de compilação
- Use **branches** para diferentes versões

### **Para colaboração:**
- Defina **convenções** de nomenclatura
- Use **issues** para discussões
- Configure **pull requests** para revisões
- Mantenha **changelog** atualizado

Esta estrutura é flexível e pode ser adaptada às necessidades específicas do seu projeto! 🎯 