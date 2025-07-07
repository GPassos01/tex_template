# 🚀 Guia Rápido - 5 Minutos para Começar

## 1. **📥 Download dos Arquivos**

[**📦 Baixar Template Completo**](https://github.com/seu-usuario/template-abnt-latex/archive/main.zip)

### Arquivos principais:
- `template.tex` - Arquivo principal do documento
- `referencias.bib` - Referências bibliográficas com 22 tipos de exemplo
- `unesp_logo.jpg` + `igce_brasao.png` - Logos (adapte para sua universidade)

## 2. **🌐 Upload no Overleaf**

1. Acesse [overleaf.com](https://www.overleaf.com)
2. **New Project** → **Upload Project**
3. Selecione o arquivo ZIP baixado
4. **Upload** e aguarde o processamento

## 3. **⚙️ Configuração Inicial**

### **Definir arquivo principal:**
- Clique com botão direito em `template.tex`
- **"Set as main file"**

### **Configurar compilador:**
- Menu (⚙️) → **Settings**
- **Compiler**: `pdfLaTeX`
- **Save project settings**

## 4. **✏️ Personalização Básica**

### **Informações pessoais** (linhas 200-250):
```latex
% Substitua:
{\large NOME DO PRIMEIRO AUTOR}          → Seu nome
{\large TÍTULO DO SEU TRABALHO}          → Título real
NOME DO SEU CURSO                        → Ex: Ciência da Computação
NOME DO PROFESSOR ORIENTADOR             → Nome do orientador
```

### **Sua universidade** (linhas 180-190):
```latex
% Para USP (descomente):
% \renewcommand{\logoesquerda}{usp_logo.jpg}
% \renewcommand{\instituicao}{UNIVERSIDADE DE SÃO PAULO}
% \renewcommand{\faculdade}{INSTITUTO DE MATEMÁTICA E ESTATÍSTICA}

% Para UNICAMP (descomente):
% \renewcommand{\logoesquerda}{unicamp_logo.jpg}
% \renewcommand{\instituicao}{UNIVERSIDADE ESTADUAL DE CAMPINAS}
```

### **Tipo de trabalho** (linha 290):
```latex
% TCC (padrão - já ativo)
\newcommand{\tipotrabalho}{Trabalho de Conclusão de Curso}

% Dissertação (descomente):
% \renewcommand{\tipotrabalho}{Dissertação}
% \renewcommand{\grautrabalho}{Mestrado}

% Tese (descomente):
% \renewcommand{\tipotrabalho}{Tese}
% \renewcommand{\grautrabalho}{Doutorado}
```

## 5. **🎯 Área de Conhecimento** (linhas 70-130)

### **Ciências Exatas/Engenharias:**
```latex
% Descomente:
% \usepackage{mathtools}           % Matemática avançada
% \usepackage{physics}             % Notação física
% \usepackage{siunitx}             % Unidades SI
% \usepackage[version=4]{mhchem}   % Química
```

### **Computação/Tecnologia:**
```latex
% Configure linguagem (linha 140):
language=Python,                 % Python, Java, C++, JavaScript...
numbers=left,                    % Descomente para numerar linhas
```

### **Ciências Humanas:**
```latex
% Descomente:
% \usepackage[num]{abntex2cite}   % Citações numéricas [1], [2]
% \usepackage{csquotes}            % Citações contextuais
% \usepackage{gb4e}                % Exemplos linguísticos
```

## 6. **📖 Escrever Conteúdo**

### **Resumo** (linha 520):
```latex
\begin{resumo}
Escreva aqui seu resumo (150-500 palavras)...

\textbf{Palavras-chave:} palavra1, palavra2, palavra3.
\end{resumo}
```

### **Capítulos** (a partir da linha 600):
```latex
\chapter{INTRODUÇÃO}
Escreva sua introdução aqui...

\section{Objetivos}
Descreva seus objetivos...

\chapter{METODOLOGIA}
Descreva sua metodologia...
```

## 7. **📚 Usar Referências**

### **Adicionar no referencias.bib:**
```bibtex
@article{silva2024,
  title={Título do Artigo},
  author={Silva, João},
  journal={Revista X},
  year={2024},
  pages={1--10}
}
```

### **Citar no texto:**
```latex
Segundo Silva \cite{silva2024}, o método...
```

## 8. **🔄 Compilar**

1. **Recompile** (primeiro compile)
2. **Recompile** novamente (resolve referências)
3. ✅ **PDF pronto!**

---

## 🆘 **Problemas Comuns**

| Problema | Solução |
|----------|---------|
| Imagem não aparece | Verifique se fez upload do arquivo |
| Erro de compilação | Veja o log de erros abaixo do PDF |
| Referência não aparece | Compile 2-3 vezes seguidas |
| Acentos estranhos | Use `{\'a}`, `{\'e}`, `{\c{c}}` |

## 📚 **Próximos Passos**

- 📖 [Documentação Completa](../README.md)
- 🔧 [Configuração Avançada](CONFIGURACAO.md)
- 📚 [Guia de Referências](REFERENCIAS.md)
- ❓ [FAQ - Perguntas Frequentes](FAQ.md)

---

**⏰ Em 5 minutos você tem um documento ABNT profissional pronto!** 