# 📁 Seções e Capítulos

Esta pasta contém arquivos `.tex` separados para cada seção/capítulo do documento.

## 🎯 **Organização Recomendada**

### **Para TCC/Dissertação/Tese:**
```
sections/
├── 01_introducao.tex           # Capítulo 1 - Introdução
├── 02_fundamentacao.tex        # Capítulo 2 - Fundamentação Teórica
├── 03_metodologia.tex          # Capítulo 3 - Metodologia
├── 04_resultados.tex           # Capítulo 4 - Resultados
├── 05_conclusoes.tex           # Capítulo 5 - Conclusões
├── pre_textuais/              # Elementos pré-textuais
│   ├── resumo.tex
│   ├── abstract.tex
│   └── listas.tex
└── pos_textuais/              # Elementos pós-textuais
    ├── anexos.tex
    └── apendices.tex
```

### **Para Artigo Científico:**
```
sections/
├── 01_introduction.tex
├── 02_methods.tex
├── 03_results.tex
├── 04_discussion.tex
└── 05_conclusion.tex
```

## 📝 **Como Usar**

### **1. Dividir o documento em arquivos separados**
```latex
% No main.tex, use \input{} para incluir seções:
\input{sections/01_introducao}
\input{sections/02_fundamentacao}
\input{sections/03_metodologia}
% ...
```

### **2. Vantagens da separação:**
- ✅ **Organização**: Cada capítulo em arquivo próprio
- ✅ **Colaboração**: Múltiplas pessoas podem trabalhar simultaneamente
- ✅ **Controle de versão**: Mudanças mais granulares no Git
- ✅ **Compilação seletiva**: Compilar apenas seções específicas
- ✅ **Manutenção**: Mais fácil encontrar e editar conteúdo

### **3. Compilação seletiva (para teste):**
```latex
% No main.tex, comente seções que não quer compilar:
\input{sections/01_introducao}
% \input{sections/02_fundamentacao}  % Comentado temporariamente
\input{sections/03_metodologia}
```

## 🔧 **Configuração no main.tex**

Para usar esta estrutura, adicione no seu `main.tex`:

```latex
% ===================================================================
% CAPÍTULOS DO SEU TRABALHO (arquivos separados)
% ===================================================================

% Elementos pré-textuais
\input{sections/pre_textuais/resumo}
\input{sections/pre_textuais/abstract}
\input{sections/pre_textuais/listas}

% Início do conteúdo principal
\textual

% Capítulos principais
\input{sections/01_introducao}
\input{sections/02_fundamentacao}
\input{sections/03_metodologia}
\input{sections/04_resultados}
\input{sections/05_conclusoes}

% Elementos pós-textuais
\postextual
\input{sections/pos_textuais/anexos}
\input{sections/pos_textuais/apendices}
```

## 📋 **Template de Capítulo**

Cada arquivo de capítulo deve seguir este formato:

```latex
% ===================================================================
% CAPÍTULO X - NOME DO CAPÍTULO
% ===================================================================

\chapter{NOME DO CAPÍTULO}

Conteúdo do capítulo aqui...

\section{Primeira Seção}

Conteúdo da primeira seção...

\subsection{Subseção}

Conteúdo da subseção...

% ===================================================================
% FIM DO CAPÍTULO X
% ===================================================================
```

## 🎓 **Dicas Avançadas**

### **Compilação condicional por área:**
```latex
% Para incluir conteúdo específico por área:
\newif\ifcomputacao
\computacaotrue  % ou \computacaofalse

\ifcomputacao
    \input{sections/especificos/algoritmos}
\fi
```

### **Numeração consistente:**
- Use labels descritivos: `\label{sec:introducao_objetivos}`
- Mantenha convenção: `\label{cap:metodologia}`
- Referencias: `\ref{sec:introducao_objetivos}`

Esta organização segue as melhores práticas de projetos LaTeX acadêmicos profissionais! 🚀 