# ⚙️ Configuração e Personalização

Este guia mostra como personalizar o template para suas necessidades específicas.

## 🏛️ **Configurando sua Universidade**

### **UNESP (Padrão)**
Não precisa alterar nada! Apenas adicione os logos:
- `unesp_logo.jpg`
- `igce_brasao.jpg`

### **USP**
```latex
% Descomente e adapte no template.tex:
\renewcommand{\logoesquerda}{usp_logo.jpg}
\renewcommand{\logodireita}{logo_sua_unidade.jpg}
\renewcommand{\instituicao}{UNIVERSIDADE DE SÃO PAULO}
\renewcommand{\faculdade}{INSTITUTO DE MATEMÁTICA E ESTATÍSTICA}
\renewcommand{\cidade}{São Paulo - SP}
```

### **UNICAMP**
```latex
% Descomente e adapte:
\renewcommand{\logoesquerda}{unicamp_logo.jpg}
\renewcommand{\logodireita}{}
\renewcommand{\instituicao}{UNIVERSIDADE ESTADUAL DE CAMPINAS}
\renewcommand{\faculdade}{INSTITUTO DE COMPUTAÇÃO}
\renewcommand{\cidade}{Campinas - SP}
```

### **Outras universidades**
```latex
% Template genérico:
\renewcommand{\logoesquerda}{logo_sua_universidade.jpg}
\renewcommand{\logodireita}{}
\renewcommand{\instituicao}{NOME DA SUA UNIVERSIDADE}
\renewcommand{\faculdade}{NOME DA SUA FACULDADE/INSTITUTO}
\renewcommand{\cidade}{Sua Cidade - Estado}
```

## 📚 **Tipos de Trabalho**

### **TCC (padrão)**
```latex
\newcommand{\tipotrabalho}{Trabalho de Conclusão de Curso}
\newcommand{\grautrabalho}{Bacharelado}
```

### **Dissertação**
```latex
\renewcommand{\tipotrabalho}{Dissertação}
\renewcommand{\grautrabalho}{Mestrado}
```

### **Tese**
```latex
\renewcommand{\tipotrabalho}{Tese}
\renewcommand{\grautrabalho}{Doutorado}
```

### **Outros tipos**
```latex
% Relatório de Iniciação Científica:
\renewcommand{\tipotrabalho}{Relatório de Iniciação Científica}
\renewcommand{\grautrabalho}{}

% Trabalho de Disciplina:
\renewcommand{\tipotrabalho}{Trabalho}
\renewcommand{\grautrabalho}{}
```

## 🔬 **Configuração por Área**

### **Ciências Exatas e Engenharias**
```latex
% Descomente os pacotes necessários:
\usepackage{mathtools}           % Matemática avançada
\usepackage{physics}             % Notação física
\usepackage{siunitx}             % Unidades SI
\usepackage[version=4]{mhchem}   % Fórmulas químicas
\usepackage{cancel}              % Cancelar termos em equações
```

**Exemplos de uso:**
```latex
% Unidades SI:
A temperatura foi de \SI{25}{\celsius} e pressão \SI{1.2e5}{\pascal}.

% Fórmulas químicas:
\ce{H2SO4 + 2NaOH -> Na2SO4 + 2H2O}

% Notação física:
\dv{x}{t} = v  % Derivada
\vec{F} = m\vec{a}  % Vetor
```

### **Computação e Tecnologia**
```latex
% Descomente conforme necessário:
\usepackage{algorithm}           % Algoritmos em pseudocódigo
\usepackage{algorithmic}         % Comandos para algoritmos
\usepackage{url}                 % URLs com quebra de linha
\usepackage{verbatim}            % Texto literal

% Configure a linguagem de programação:
language=Python,                 % Python, Java, C++, JavaScript, etc.
numbers=left,                    % Descomente para mostrar números
```

**Configurar sintaxe highlighting:**
```latex
% No template.tex, localize e configure:
\lstset{
  language=Python,               % SUA LINGUAGEM
  numbers=left,                  % left, right, none
  stepnumber=1,                  % Intervalo de numeração
  backgroundcolor=\color{backcolour},
  frame=single,                  % Borda: single, double, none
}
```

### **Ciências Humanas e Sociais**
```latex
% Para citações especiais:
\usepackage{csquotes}            % Citações contextuais
\usepackage{epigraph}            % Epígrafes em capítulos

% Para linguística:
\usepackage{gb4e}                % Exemplos linguísticos numerados
\usepackage{tipa}                % Símbolos fonéticos IPA

% Sistema numérico de citação:
\usepackage[num]{abntex2cite}    % [1], [2] em vez de (AUTOR, 2023)
```

## 🎨 **Personalização Visual**

### **Escolher Fonte**
```latex
% Opção 1: Times New Roman (padrão ABNT)
\usepackage{times}

% Opção 2: Arial/Helvetica
% \usepackage{helvet}
% \renewcommand{\familydefault}{\sfdefault}

% Opção 3: Computer Modern (padrão LaTeX)
% (remova o \usepackage{times})

% Opção 4: Latin Modern
% \usepackage{lmodern}
```

### **Estilos de Código**
O template oferece 3 estilos pré-configurados:

**Estilo 1: Com borda e numeração**
```latex
\lstset{
  frame=single,                  % Borda simples
  numbers=left,                  % Números à esquerda
  backgroundcolor=\color{backcolour}
}
```

**Estilo 2: Limpo (sem borda)**
```latex
% Descomente o "ESTILO 2" no template.tex
```

**Estilo 3: Monocromático (P&B)**
```latex
% Descomente o "ESTILO 3" no template.tex
```

### **Sistema de Citação**
```latex
% Autor-data: (SILVA, 2023)
\usepackage[alf]{abntex2cite}

% Numérico: [1], [2]
\usepackage[num]{abntex2cite}
```

## 📋 **Informações Pessoais**

### **Dados básicos**
Localize e substitua no `template.tex`:

```latex
% Linha ~230 (capa):
{\large NOME DO PRIMEIRO AUTOR}          → Seu nome completo
{\large TÍTULO DO SEU TRABALHO}          → Título do trabalho

% Linha ~280 (folha de rosto):
NOME DO SEU CURSO                        → Ex: Ciência da Computação
NOME DO PROFESSOR ORIENTADOR             → Nome do orientador

% Linha ~170 (metadados PDF):
pdftitle={TÍTULO DO SEU TRABALHO AQUI}   → Título do trabalho
pdfauthor={SEU NOME AQUI}                → Seu nome
```

### **Trabalhos em grupo**
```latex
% Para múltiplos autores, descomente:
{\large NOME DO PRIMEIRO AUTOR}
\vspace{0.2cm}\par
{\large NOME DO SEGUNDO AUTOR}
\vspace{0.2cm}\par
{\large NOME DO TERCEIRO AUTOR}
```

### **Co-orientador**
```latex
% Adicione após o orientador:
\renewcommand{\orientacao}{
  Orientador: NOME DO PROFESSOR ORIENTADOR\\
  Co-orientador: NOME DO CO-ORIENTADOR
}
```

## 📖 **Elementos Textuais**

### **Resumo e palavras-chave**
```latex
\begin{resumo}
Escreva aqui o resumo do seu trabalho (150-500 palavras).
Deve apresentar objetivos, metodologia, resultados e conclusões.

\vspace{\onelineskip}
\noindent
\textbf{Palavras-chave:} palavra1, palavra2, palavra3, palavra4.
\end{resumo}
```

### **Listas opcionais**
```latex
% Descomente se necessário:
\listoffigures    % Lista de figuras
\listoftables     % Lista de tabelas

% Lista de abreviaturas:
\chapter*{LISTA DE ABREVIATURAS E SIGLAS}
\begin{tabular}{ll}
ABNT & Associação Brasileira de Normas Técnicas\\
IGCE & Instituto de Geociências e Ciências Exatas\\
\end{tabular}
```

## 🔧 **Configurações Avançadas**

### **Margens personalizadas**
```latex
% No template.tex, ajuste se necessário:
\geometry{
    left=3cm,         % Margem esquerda
    right=2cm,        % Margem direita  
    top=3cm,          % Margem superior
    bottom=2cm        % Margem inferior
}
```

### **Espaçamento customizado**
```latex
% Espaçamento entre linhas:
\OnehalfSpacing      % 1.5 (padrão ABNT)
% \singlespacing     % 1.0
% \doublespacing     % 2.0

% Recuo de parágrafo:
\setlength{\parindent}{1.25cm}  % Padrão ABNT
```

### **Configurar hyperlinks**
```latex
\hypersetup{
    colorlinks=true,
    linkcolor=blue,        % Cor dos links internos
    citecolor=black,       % Cor das citações
    urlcolor=cyan,         % Cor das URLs
    pdfborder={0 0 0}      % Remove bordas dos links
}
```

## 📁 **Organização de Arquivos**

### **Estrutura recomendada**
```
projeto/
├── template.tex           # Arquivo principal
├── referencias.bib        # Referências bibliográficas
├── figuras/              # Pasta para imagens
│   ├── figura1.png
│   └── figura2.jpg
├── logos/                # Logos da universidade
│   ├── unesp_logo.jpg
│   └── igce_brasao.png
└── anexos/               # Documentos anexos
    └── questionario.pdf
```

### **Incluir imagens de subpastas**
```latex
% Se a imagem está em figuras/:
\includegraphics[width=0.7\textwidth]{figuras/minha_figura.png}
```

## ✅ **Checklist de Configuração**

- [ ] Logos da universidade carregados
- [ ] Informações pessoais atualizadas
- [ ] Tipo de trabalho configurado
- [ ] Pacotes da área descomentados
- [ ] Sistema de citação escolhido
- [ ] Fonte selecionada
- [ ] Estilo de código definido
- [ ] Teste de compilação realizado

## 🚀 **Próximos Passos**

Configuração concluída? Continue com:

- 📚 [Guia de Referências](REFERENCIAS.md)
- 🎨 [Personalização Avançada](PERSONALIZACAO.md)
- ❓ [FAQ - Perguntas Frequentes](FAQ.md)

---

**🎯 Com essas configurações, seu template estará perfeitamente adaptado às suas necessidades!** 