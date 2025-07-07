# ❓ Perguntas Frequentes (FAQ)

## 🚀 **Primeiros Passos**

### **Q: Nunca usei LaTeX antes. É difícil?**
**R:** Não! Este template foi feito especialmente para iniciantes. Você só precisa:
1. Fazer upload no Overleaf
2. Substituir os textos de exemplo pelos seus
3. Compilar o documento

Tudo está explicado em português com exemplos práticos.

### **Q: Preciso instalar algum programa?**
**R:** Não é necessário. Recomendamos usar o [Overleaf](https://www.overleaf.com) que funciona direto no navegador. É gratuito e não precisa instalar nada.

### **Q: Quanto tempo leva para ter o documento pronto?**
**R:** Seguindo o [Guia Rápido](GUIA_RAPIDO.md), você tem um documento ABNT formatado em 5 minutos.

---

## 🏛️ **Universidades e Instituições**

### **Q: Funciona na minha universidade?**
**R:** Sim! O template é universalizado e funciona em qualquer universidade brasileira. Testado em:
- ✅ UNESP (todas as unidades)
- ✅ USP (todas as unidades)  
- ✅ UNICAMP
- ✅ UFMG, UFRJ, UFSC
- ✅ Universidades privadas

### **Q: Como adaptar para minha universidade?**
**R:** Muito simples:
1. Substitua os logos (`unesp_logo.jpg`, `igce_brasao.jpg`)
2. Descomente as linhas da sua universidade no arquivo `template.tex`
3. Ajuste nome da instituição e faculdade

### **Q: Não tenho o logo da minha universidade**
**R:** Procure no site oficial da universidade na seção "Identidade Visual" ou "Assessoria de Imprensa". Formatos aceitos: JPG, PNG, PDF.

---

## 📚 **Tipos de Trabalho**

### **Q: Posso usar para dissertação/tese?**
**R:** Sim! O template suporta:
- 🎓 TCC (padrão)
- 📄 Dissertação de Mestrado
- 📖 Tese de Doutorado
- 📊 Relatório de Iniciação Científica
- 📝 Trabalho de Disciplina

Basta descomentar o tipo desejado no arquivo `template.tex`.

### **Q: Como mudar de TCC para dissertação?**
**R:** No arquivo `template.tex`, localize e descomente:
```latex
% \renewcommand{\tipotrabalho}{Dissertação}
% \renewcommand{\grautrabalho}{Mestrado}
```

---

## 🔬 **Áreas do Conhecimento**

### **Q: Funciona para minha área de estudo?**
**R:** Sim! O template tem configurações específicas para:
- 🔬 **Ciências Exatas**: Matemática, Física, Química, Engenharias
- 💻 **Computação**: Códigos, algoritmos, diagramas
- 📚 **Humanas**: Citações, linguística, história
- ⚕️ **Saúde**: Tabelas clínicas, estatísticas

### **Q: Como ativar pacotes da minha área?**
**R:** No `template.tex`, descomente os pacotes necessários:
```latex
% Para Exatas:
% \usepackage{mathtools}    % Matemática avançada
% \usepackage{siunitx}      % Unidades SI

% Para Computação:
% \usepackage{algorithm}    % Algoritmos
% \usepackage{verbatim}     % Códigos

% Para Humanas:
% \usepackage{csquotes}     % Citações especiais
% \usepackage{gb4e}         % Linguística
```

---

## 📖 **Referências Bibliográficas**

### **Q: Como adicionar minhas referências?**
**R:** 
1. Abra o arquivo `referencias.bib`
2. Use os 22 tipos de exemplo como modelo
3. Substitua pelos seus dados
4. Cite no texto com `\cite{chave}`

### **Q: Posso citar sites e YouTube?**
**R:** Sim! O arquivo `referencias.bib` inclui exemplos para:
- 🌐 Sites governamentais e empresariais
- 📹 Vídeos do YouTube educacionais
- 📊 Bases de dados (Kaggle, IBGE)
- 📝 Documentação técnica
- 🎧 Podcasts especializados

### **Q: Como gerar referências automaticamente?**
**R:** Use estas ferramentas:
- **Google Acadêmico**: Clique em "Citar" → "BibTeX"
- **doi2bib.org**: Cole o DOI do artigo
- **Zotero/Mendeley**: Gerenciadores gratuitos

---

## 💻 **Códigos de Programação**

### **Q: Como inserir códigos?**
**R:** Use o ambiente `lstlisting`:
```latex
\begin{lstlisting}[language=Python, caption=Meu código]
def hello():
    print("Olá mundo!")
\end{lstlisting}
```

### **Q: Quais linguagens são suportadas?**
**R:** Mais de 50 linguagens: Python, Java, C, C++, JavaScript, R, MATLAB, SQL, HTML, CSS, PHP, etc.

### **Q: Como mostrar números de linha?**
**R:** No `template.tex`, descomente:
```latex
numbers=left,                    % Mostra números de linha
```

---

## 🎨 **Formatação e Estilo**

### **Q: Posso mudar a fonte?**
**R:** Sim! O template oferece:
- **Times New Roman** (padrão ABNT)
- **Arial/Helvetica**
- **Computer Modern** (padrão LaTeX)

Descomente a opção desejada no `template.tex`.

### **Q: Como inserir figuras e tabelas?**
**R:** Use os exemplos no template:
```latex
% Figura:
\begin{figure}[h]
  \centering
  \includegraphics[width=0.7\textwidth]{minha_figura.png}
  \caption{Descrição da figura}
  \caption*{Fonte: Elaboração própria.}
\end{figure}

% Tabela:
\begin{table}[h]
\centering
\caption{Título da tabela}
\begin{tabular}{|c|c|}
\hline
Coluna 1 & Coluna 2 \\
\hline
Dado A & Dado B \\
\hline
\end{tabular}
\caption*{Fonte: Elaboração própria.}
\end{table}
```

---

## 🐛 **Problemas Técnicos**

### **Q: Erro de compilação. O que fazer?**
**R:**
1. **Veja o log de erros** abaixo do PDF no Overleaf
2. **Problemas comuns**:
   - Imagem não encontrada → Verifique o upload
   - Caracteres especiais → Use `{\'a}`, `{\'e}`, `{\c{c}}`
   - Referências → Compile 2-3 vezes seguidas

### **Q: Imagens não aparecem**
**R:**
1. Verifique se fez upload da imagem
2. Confirme o nome do arquivo (incluindo extensão)
3. Use apenas .jpg, .png ou .pdf
4. Não use acentos no nome do arquivo

### **Q: Referências não aparecem**
**R:**
1. Verifique se o arquivo `referencias.bib` está presente
2. Compile múltiplas vezes: LaTeX → BibTeX → LaTeX → LaTeX
3. Confirme se citou no texto com `\cite{chave}`

### **Q: Acentos aparecem estranhos**
**R:** Use os códigos LaTeX:
- `á` → `{\'a}`
- `é` → `{\'e}`
- `ç` → `{\c{c}}`
- `ã` → `{\~a}`

---

## 🔧 **Personalização Avançada**

### **Q: Posso adicionar mais capítulos?**
**R:** Sim! Use:
```latex
\chapter{NOME DO NOVO CAPÍTULO}
Conteúdo do capítulo...

\section{Seção do capítulo}
Conteúdo da seção...
```

### **Q: Como fazer citações diretas longas?**
**R:** Use o ambiente `citacao`:
```latex
\begin{citacao}
Esta é uma citação longa com mais de três linhas que deve
ser formatada em parágrafo separado conforme normas ABNT.
\end{citacao}
```

### **Q: Posso usar no VS Code ou Overleaf local?**
**R:** Sim! O template funciona em:
- ✅ **Overleaf** (recomendado)
- ✅ **TeXLive** (Linux/Mac)
- ✅ **MiKTeX** (Windows)
- ✅ **VS Code** + LaTeX Workshop

---

## 📞 **Suporte**

### **Q: Onde buscar ajuda?**
**R:**
- 📚 [Documentação completa](../README.md)
- 🐛 [Reportar problemas](https://github.com/seu-usuario/template-abnt-latex/issues)
- 💬 [Discussões da comunidade](https://github.com/seu-usuario/template-abnt-latex/discussions)
- 📧 Email: [suporte@exemplo.com](mailto:suporte@exemplo.com)

### **Q: Como contribuir com melhorias?**
**R:** Veja o [Guia de Contribuição](../CONTRIBUTING.md). Toda ajuda é bem-vinda!

### **Q: É gratuito mesmo?**
**R:** Sim! Este template é 100% gratuito e open source (licença MIT). Use à vontade para seus trabalhos acadêmicos.

---

## 🎓 **Dicas de Sucesso**

### **Q: Dicas para um bom trabalho acadêmico?**
**R:**
- ✅ **Backup regular**: Use o histórico do Overleaf
- ✅ **Compile frequentemente**: Para detectar erros cedo
- ✅ **Use comentários**: Documente suas modificações
- ✅ **Fonte confiável**: Sempre cite fontes primárias
- ✅ **Revisão**: Peça para alguém revisar antes de entregar

### **Q: Como acelerar a escrita?**
**R:**
- 🎯 **Foque no conteúdo**: O template cuida da formatação
- 📝 **Escreva em blocos**: Um capítulo por vez
- 🔄 **Compile regularmente**: Para verificar se está tudo ok
- 📚 **Use os exemplos**: Adapte os modelos fornecidos

---

**💡 Não encontrou sua pergunta? [Abra uma issue](https://github.com/seu-usuario/template-abnt-latex/issues/new?template=question.md) e ajudaremos você!** 