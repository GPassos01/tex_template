# 📝 Template ABNT para LaTeX/Overleaf

<p align="center">
  <strong>Template completo para trabalhos acadêmicos brasileiros seguindo normas ABNT</strong>
</p>

<p align="center">
  <a href="#-começar-agora">🚀 Começar Agora</a> •
  <a href="#-características">✨ Características</a> •
  <a href="#-documentação">📚 Documentação</a> •
  <a href="#-exemplos">🎯 Exemplos</a> •
  <a href="#-suporte">💬 Suporte</a>
</p>

---

## 🎯 **Por que usar este template?**

- ✅ **Pronto para usar**: Funciona imediatamente no Overleaf
- ✅ **Normas ABNT**: Formatação automática conforme padrões brasileiros
- ✅ **Para todos os níveis**: De iniciante a avançado
- ✅ **Universalizado**: Adaptável para qualquer universidade brasileira
- ✅ **Referências modernas**: 22 tipos incluindo sites, documentação técnica, vídeos
- ✅ **Totalmente documentado**: Cada linha explicada em português

## 🚀 **Começar Agora**

### **Opção 1: Overleaf (Recomendado)**
1. **[📥 Baixe os arquivos](https://github.com/seu-usuario/template-abnt-latex/archive/main.zip)**
2. **[🌐 Acesse o Overleaf](https://www.overleaf.com)**
3. **Upload**: Clique em "New Project" → "Upload Project"
4. **Arquivo principal**: Abra `template/main.tex`
5. **Compile**: Clique em "Recompile" e pronto! 🎉

### **Opção 2: LaTeX Local com Scripts**
```bash
git clone https://github.com/seu-usuario/template-abnt-latex.git
cd template-abnt-latex

# Linux/macOS:
./scripts/build.sh build

# Windows:
.\scripts\build.ps1 build
```

### **Opção 3: LaTeX Local Manual**
```bash
cd template
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

## ✨ **Características**

| Característica | Descrição |
|---|---|
| 📚 **Padrão ABNT** | Margens, fontes, espaçamento e citações conforme normas |
| 🏛️ **Multi-instituição** | UNESP, USP, UNICAMP e outras universidades |
| 🔬 **Multi-área** | Exatas, Humanas, Computação com pacotes específicos |
| 📖 **Tipos de trabalho** | TCC, Dissertação, Tese, Relatórios |
| 🌐 **Referências modernas** | Sites, GitHub, arXiv, YouTube, podcasts, software |
| 💻 **Códigos** | Syntax highlighting para Python, Java, C++, etc. |
| 📊 **Elementos gráficos** | Figuras, tabelas, equações, algoritmos |
| 📝 **Boas práticas LaTeX** | Formatação científica profissional automática |
| 🎓 **Iniciante-friendly** | Comentários detalhados em português |

## 📚 **Tipos de trabalho suportados**

- 🎓 **Trabalho de Conclusão de Curso (TCC)**
- 📄 **Dissertação de Mestrado**
- 📖 **Tese de Doutorado**
- 📊 **Relatório de Iniciação Científica**
- 📝 **Trabalho de Disciplina**
- 📋 **Artigo Científico**

## 🏛️ **Universidades testadas**

- ✅ **UNESP** (todas as unidades)
- ✅ **USP** (todas as unidades)
- ✅ **UNICAMP**
- ✅ **UFMG**, **UFRJ**, **UFSC**
- ✅ **Universidades privadas**

## 🎯 **Exemplos de uso**

### **Por área do conhecimento:**

| Área | Template | Demonstração |
|---|---|---|
| 🔬 **Ciências Exatas** | [Ver exemplo](examples/exatas/) | Equações, unidades SI, gráficos |
| 💻 **Computação** | [Ver exemplo](examples/computacao/) | Códigos, algoritmos, diagramas |
| 📚 **Humanas** | [Ver exemplo](examples/humanas/) | Citações, linguística, epígrafes |
| ⚕️ **Saúde** | [Ver exemplo](examples/saude/) | Tabelas clínicas, estatísticas |

## 📖 **Documentação Completa**

| Documento | Descrição |
|---|---|
| **[📋 Guia Rápido](docs/GUIA_RAPIDO.md)** | Começar em 5 minutos |
| **[⚙️ Configuração](docs/CONFIGURACAO.md)** | Personalizar para sua universidade |
| **[📁 Estrutura do Projeto](docs/ESTRUTURA_PROJETO.md)** | **NOVO!** Organização profissional de pastas |
| **[📝 Boas Práticas LaTeX](docs/LATEX_BOAS_PRATICAS.md)** | **NOVO!** Formatação científica profissional |
| **[❓ FAQ](docs/FAQ.md)** | Perguntas frequentes com 50+ respostas |

## 🌟 **Referências Bibliográficas Modernas**

Este template inclui **22 categorias** de exemplos de referências:

<details>
<summary>📚 <strong>Ver todas as categorias</strong></summary>

### **📖 Fontes Tradicionais**
- Livros e monografias
- Artigos científicos 
- Teses e dissertações
- Capítulos de livros

### **🌐 Fontes Digitais**
- Sites governamentais (IBGE, MEC, ANVISA)
- Empresas (GitHub, Google, Microsoft, OpenAI)
- Organizações (WHO, IEEE, ONU)
- Documentação técnica (Python, Docker)

### **📊 Pesquisa e Dados**
- Bases de dados (Kaggle, World Bank)
- Preprints (arXiv, bioRxiv)
- Relatórios técnicos (NASA, IPCC)

### **🎓 Recursos Educacionais**
- Vídeos (MIT, Stanford, YouTube)
- Podcasts especializados
- Cursos online (Coursera, edX)
- Software (R, SPSS, QGIS)

</details>

## 📝 **Boas Práticas LaTeX Científico**

**🆕 NOVO!** Implementação das melhores práticas baseadas no [LaTeX Best Practices](https://github.com/temken/latex-best-practices):

### **🔧 Comandos Automáticos**
```latex
% Referências com espaçamento automático
\figref{fig:exemplo}    % → Fig.~\ref{fig:exemplo}
\tabref{tab:dados}      % → Tab.~\ref{tab:dados}  
\eqnref{eq:teorema}     % → Eq.~\eqref{eq:teorema}

% Matemática profissional
\int f(x) \, \dd x      % Diferencial não-itálico
25\unit{°C}             % Unidades com espaçamento correto
```

### **✨ O que está incluído:**
- ✅ **Espaçamento automático**: `~` em referências e citações
- ✅ **Matemática profissional**: Diferenciais, pontuação, subscritos
- ✅ **Convenções científicas**: Labels estruturados, aspas corretas
- ✅ **Posicionamento inteligente**: Figuras/tabelas em topo/base
- ✅ **Guia completo**: **[📖 Boas Práticas LaTeX](docs/LATEX_BOAS_PRATICAS.md)**

## 📁 **Estrutura Organizada**

**🆕 NOVO!** Estrutura profissional baseada em [melhores práticas acadêmicas](https://www.glennjlea.com/latex/latex-project_file_structure/):

```
template-abnt-latex/
├── 📁 template/         # Código LaTeX principal
│   ├── main.tex         # Arquivo principal
│   ├── referencias.bib  # Bibliografia
│   └── sections/        # Capítulos separados
├── 📁 assets/           # Recursos organizados
│   ├── images/          # Figuras e gráficos
│   └── logos/           # Logos institucionais
├── 📁 scripts/          # Automação
│   ├── build.sh         # Compilação (Linux/Mac)
│   └── build.ps1        # Compilação (Windows)
├── 📁 examples/         # Exemplos por área
└── 📁 docs/            # Documentação completa
```

### **🚀 Benefícios da estrutura:**
- ✅ **Colaboração**: Múltiplas pessoas trabalhando simultaneamente
- ✅ **Organização**: Cada tipo de arquivo em sua pasta
- ✅ **Automação**: Scripts para compilação e limpeza
- ✅ **Escalabilidade**: Estrutura que cresce com o projeto
- ✅ **Padrão acadêmico**: Seguindo melhores práticas internacionais

**📖 Detalhes completos**: **[📁 Estrutura do Projeto](docs/ESTRUTURA_PROJETO.md)**

### **📊 Comparação antes/depois:**
| Tradicional | Com boas práticas |
|-------------|-------------------|
| `\int f(x) dx` | `\int f(x) \, \mathrm{d}x` |
| `Fig. \ref{fig:1}` | `\figref{fig:exemplo}` |
| `E = mc^2` | `E = mc^2 \,.` |
| `N_{particulas}` | `N_\mathrm{partículas}` |

## 🔧 **Requisitos**

- **Overleaf**: Funciona imediatamente (recomendado)
- **LaTeX local**: TeXLive 2020+ ou MiKTeX
- **Compilador**: pdfLaTeX (padrão)

## 📞 **Suporte e Comunidade**

- 🐛 **[Reportar problemas](https://github.com/seu-usuario/template-abnt-latex/issues)**
- 💬 **[Discussões](https://github.com/seu-usuario/template-abnt-latex/discussions)**
- 📧 **Email**: [seu-email@exemplo.com](mailto:seu-email@exemplo.com)
- 🎓 **Discord**: [Comunidade LaTeX Brasil](https://discord.gg/latex-brasil)

## 🤝 **Contribuindo**

Contribuições são bem-vindas! Veja como ajudar:

1. 🍴 **Fork** o projeto
2. 🔄 **Clone** sua cópia
3. ✨ **Faça** suas melhorias
4. 📝 **Commit** suas mudanças
5. 🚀 **Envie** um Pull Request

### **Como contribuir:**
- 🐛 Reportar bugs
- 💡 Sugerir melhorias
- 📚 Melhorar documentação
- 🎯 Adicionar exemplos
- 🔧 Corrigir problemas

## 📊 **Estatísticas**

![GitHub stars](https://img.shields.io/github/stars/seu-usuario/template-abnt-latex)
![GitHub forks](https://img.shields.io/github/forks/seu-usuario/template-abnt-latex)
![GitHub issues](https://img.shields.io/github/issues/seu-usuario/template-abnt-latex)
![GitHub license](https://img.shields.io/github/license/seu-usuario/template-abnt-latex)

## 🏆 **Showcase**

Trabalhos criados com este template:

- 🎓 **[TCC - Inteligência Artificial](showcase/tcc-ia.pdf)** - UNESP Rio Claro
- 📄 **[Dissertação - Blockchain](showcase/dissertacao-blockchain.pdf)** - USP São Carlos  
- 📖 **[Tese - Computação Quântica](showcase/tese-quantum.pdf)** - UNICAMP

## 📜 **Licença**

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para detalhes.

## 🙏 **Agradecimentos**

- **[abntex2](https://github.com/abntex/abntex2)**: Classe LaTeX base
- **[Overleaf](https://www.overleaf.com)**: Plataforma de edição online
- **Comunidade LaTeX brasileira**: Feedback e contribuições

---

<p align="center">
  <strong>⭐ Se este template te ajudou, deixe uma estrela no GitHub!</strong>
</p>

<p align="center">
  Feito com ❤️ para a comunidade acadêmica brasileira
</p> 
