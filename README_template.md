# Template ABNT para IGCE-UNESP - Overleaf

Este é um template completo para trabalhos acadêmicos seguindo as normas ABNT, especificamente adaptado para o Instituto de Geociências e Ciências Exatas (IGCE) da UNESP Campus Rio Claro.

## 📋 Características

- ✅ **Totalmente comentado**: Cada linha de código possui explicações detalhadas
- ✅ **Padrão ABNT**: Margens, espaçamento, fontes e formatação conforme normas
- ✅ **Adaptável para qualquer instituição**: Configurações flexíveis para diferentes universidades
- ✅ **Múltiplos tipos de trabalho**: TCC, dissertação, tese, relatórios, trabalhos de disciplina
- ✅ **Específico por área**: Pacotes e exemplos para exatas, humanas, computação, etc.
- ✅ **Otimizado para Overleaf**: Funciona perfeitamente na plataforma online
- ✅ **Iniciante-friendly**: Ideal para quem nunca usou LaTeX antes
- ✅ **Referências abrangentes**: 22 categorias de exemplos incluindo sites modernos

## 🚀 Como usar no Overleaf

### Passo 1: Criar novo projeto
1. Acesse [Overleaf](https://www.overleaf.com)
2. Clique em "New Project" → "Upload Project"
3. Faça upload do arquivo `template.tex` e `referencias.bib`

### Passo 2: Adicionar logos
Faça upload dos logos da sua instituição:
- Para **IGCE-UNESP** (padrão): `unesp_logo.jpg` e `igce_brasao.jpg`
- Para **outras instituições**: adapte os nomes conforme configurado no template

**Onde encontrar logos:**
- [UNESP](https://www2.unesp.br/portal#!/identidade-visual)
- [USP](https://www5.usp.br/institucional/a-usp/identidade-visual/)
- [UNICAMP](https://www.unicamp.br/unicamp/identidade-visual)
- Para outras universidades: site oficial da instituição

### Passo 3: Configurar sua instituição
**Para IGCE-UNESP (padrão):** Não precisa alterar nada

**Para outras instituições:** Descomente e adapte as seções:
```latex
% Para USP:
% \renewcommand{\logoesquerda}{usp_logo.jpg}
% \renewcommand{\instituicao}{UNIVERSIDADE DE SÃO PAULO}
% \renewcommand{\faculdade}{NOME DA SUA FACULDADE}
% \renewcommand{\cidade}{Sua Cidade - SP}
```

### Passo 4: Escolher tipo de trabalho
Descomente o tipo do seu trabalho:
```latex
% TCC (padrão já ativo)
\newcommand{\tipotrabalho}{Trabalho de Conclusão de Curso}

% Para dissertação:
% \renewcommand{\tipotrabalho}{Dissertação}
% \renewcommand{\grautrabalho}{Mestrado}

% Para tese:
% \renewcommand{\tipotrabalho}{Tese}
% \renewcommand{\grautrabalho}{Doutorado}
```

### Passo 5: Personalizar informações básicas
```latex
% Substitua pelos seus dados:
{\large NOME DO PRIMEIRO AUTOR}          % Seu nome completo
{\large TÍTULO DO SEU TRABALHO}          % Título do trabalho
NOME DO SEU CURSO                        % Ex: Ciência da Computação
NOME DO PROFESSOR ORIENTADOR             % Nome do orientador
```

### Passo 6: Configurar para sua área (opcional)

#### Para Ciências Exatas/Engenharias:
```latex
% Descomente pacotes específicos no template:
% \usepackage{mathtools}           % Matemática avançada
% \usepackage{physics}             % Notação física
% \usepackage{siunitx}             % Unidades SI
% \usepackage[version=4]{mhchem}   % Fórmulas químicas
```

#### Para Computação/Tecnologia:
```latex
% Configure a linguagem de programação:
language=Python,                 % Altere para: Java, C, C++, JavaScript, etc.
numbers=left,                    % Descomente para mostrar números de linha
% Escolha um dos 3 estilos de código disponíveis
```

#### Para Humanas/Sociais:
```latex
% Para sistema numérico de citação:
% \usepackage[num]{abntex2cite}
% Descomente pacotes específicos:
% \usepackage{csquotes}            % Citações contextuais
% \usepackage{gb4e}                % Exemplos linguísticos
% \usepackage{epigraph}            % Epígrafes
```

#### Para escolher fonte diferente:
```latex
% Arial/Helvetica (descomente):
% \usepackage{helvet}
% \renewcommand{\familydefault}{\sfdefault}

% Computer Modern (remova o \usepackage{times}):
% (fonte padrão do LaTeX)
```

### Passo 7: Escrever o conteúdo
Substitua os textos exemplo pelos seus próprios:
- Resumo e palavras-chave
- Capítulos e seções
- Referências bibliográficas

### Passo 8: Compilar
- Clique em "Recompile" no Overleaf
- O PDF será gerado automaticamente

## 📖 Estrutura do documento

```
├── Capa
├── Folha de rosto
├── Resumo
├── Lista de figuras (opcional)
├── Lista de tabelas (opcional)  
├── Lista de abreviaturas (opcional)
├── Sumário
├── Capítulos:
│   ├── 1. Introdução
│   ├── 2. Fundamentação Teórica
│   ├── 3. Metodologia
│   ├── 4. Resultados e Discussão
│   └── 5. Considerações Finais
└── Referências
```

## 🎯 Elementos inclusos

### Formatação ABNT
- Margens: 3cm (esq), 2cm (dir), 3cm (sup), 2cm (inf)
- Fonte: Times New Roman 12pt (+ opções Arial e outras)
- Espaçamento: 1,5 entre linhas
- Recuo de parágrafo: 1,25cm
- Sistema de citação: autor-data ou numérico

### Configurações por área do conhecimento

#### 🔬 **Ciências Exatas e Engenharias**
- Pacotes matemáticos: `amsmath`, `amssymb`, `amsfonts`
- Opcionais: `mathtools`, `physics`, `siunitx`, `mhchem`
- Exemplos: equações, sistemas, unidades SI, fórmulas químicas

#### 💻 **Computação e Tecnologia**  
- Códigos: `listings` com syntax highlighting
- Opcionais: `algorithm`, `algorithmic`, `url`, `verbatim`
- Exemplos: códigos Python/Java/C++, algoritmos, URLs

#### 📚 **Ciências Humanas e Sociais**
- Citações: `csquotes`, `epigraph`
- Linguística: `gb4e`, `tipa`
- Exemplos: citações longas, epígrafes, exemplos linguísticos

### Elementos pré-configurados
- **Figuras**: `\begin{figure}[h] ... \end{figure}`
- **Tabelas**: `\begin{table}[h] ... \end{table}` (simples e profissionais)
- **Códigos**: `\begin{lstlisting} ... \end{lstlisting}` (3 estilos diferentes)
- **Equações**: `\begin{equation} ... \end{equation}` e `\begin{align}`
- **Citações**: `\cite{referencia}` (autor-data ou numérico)

## 📚 Sistema de referências bibliográficas moderno

### 🌟 **22 categorias de exemplos incluídas:**

#### **📖 Fontes tradicionais:**
- Livros e monografias
- Artigos em periódicos científicos
- Teses e dissertações
- Capítulos de livros

#### **🌐 Fontes digitais modernas:**
- **Sites governamentais**: IBGE, MEC, ANVISA, Banco Central
- **Empresas de tecnologia**: GitHub, Google, Microsoft, OpenAI, NVIDIA
- **Organizações internacionais**: WHO, IEEE, OECD, ONU
- **Documentação técnica**: Python, Docker, Kubernetes

#### **📊 Pesquisa e dados:**
- **Bases de dados**: Kaggle, World Bank, DATASUS
- **Preprints**: arXiv, bioRxiv
- **Relatórios técnicos**: NASA, IPCC, CETIC

#### **🎓 Recursos educacionais:**
- **Vídeos educacionais**: MIT OpenCourseWare, Stanford
- **Podcasts especializados**: ciência e tecnologia
- **Cursos online**: Coursera, edX
- **Software**: R, SPSS, QGIS

#### **📰 Mídia e comunicação:**
- **Jornais**: Folha de S. Paulo, The Economist
- **Blogs especializados**: Medium, Towards Data Science
- **Redes sociais**: apenas quando academicamente relevante

#### **⚖️ Documentos oficiais:**
- **Legislação**: LGPD, Marco Civil da Internet
- **Normas técnicas**: ABNT, ISO
- **Dicionários especializados**: Gartner, TechTerms

### 🔧 **Ferramentas integradas:**
- Compatibilidade com Google Acadêmico (BibTeX)
- Suporte a gerenciadores: Zotero, Mendeley, EndNote
- Validação automática de URLs
- Formatação ABNT automática

## 💡 Exemplos de uso

### Inserir figura
```latex
\begin{figure}[h]
  \centering
  \includegraphics[width=0.7\textwidth]{minha_figura.png}
  \caption{Descrição da figura}
  \caption*{Fonte: Elaboração própria.}
\end{figure}
```

### Inserir tabela
```latex
\begin{table}[h]
\centering
\caption{Título da tabela}
\begin{tabular}{|c|c|c|}
\hline
\textbf{Coluna 1} & \textbf{Coluna 2} & \textbf{Coluna 3} \\
\hline
Dado 1 & Dado 2 & Dado 3 \\
\hline
\end{tabular}
\caption*{Fonte: Elaboração própria.}
\end{table}
```

### Inserir código
```latex
\begin{lstlisting}[language=Python, caption=Exemplo de código]
def hello_world():
    print("Olá, mundo!")
    return True
\end{lstlisting}
```

### Citar diferentes tipos de fonte
```latex
% Artigo científico:
Segundo Silva \cite{silva2020}, o método proposto...

% Site governamental:
Conforme dados do IBGE \cite{ibge2023censo}...

% Documentação técnica:
A linguagem Python \cite{python2023documentation} oferece...

% Preprint:
Estudos recentes \cite{silva2023quantum} demonstram...

% Vídeo educacional:
Como explicado por Ng \cite{mit2023algorithms}...
```

## 🔧 Solução de problemas

### Erro de compilação
- Verifique se todos os arquivos de imagem estão presentes
- Certifique-se de que não há caracteres especiais nos nomes dos arquivos
- Compile 2-3 vezes seguidas para resolver referências

### Imagens não aparecem
- Verifique se o arquivo existe na raiz do projeto
- Confirme se o nome está correto (incluindo extensão)
- Use apenas .jpg, .png ou .pdf

### Referências não funcionam
- Certifique-se de que o arquivo `referencias.bib` existe
- Compile múltiplas vezes (LaTeX → BibTeX → LaTeX → LaTeX)
- Verifique a sintaxe das entradas BibTeX
- Teste se URLs estão funcionais

### URLs muito longas
- Use quebras de linha naturais
- Considere serviços de encurtamento quando apropriado
- Verifique se o link está acessível

## ⚠️ Dicas importantes

1. **Sempre use fonte**: Toda figura e tabela deve ter fonte
2. **Compile múltiplas vezes**: Para resolver referências cruzadas
3. **Mantenha backup**: Sempre faça backup do seu trabalho
4. **Teste regularmente**: Compile frequentemente para detectar erros
5. **Use comentários**: Documente suas alterações
6. **Valide URLs**: Teste periodicamente links de referências
7. **Diversifique fontes**: Use diferentes tipos de referência quando apropriado

## 🌟 Recursos adicionais

### **Bases de pesquisa recomendadas:**
- **Portal de Periódicos CAPES**: [periodicos.capes.gov.br](https://periodicos.capes.gov.br)
- **SciELO**: [scielo.br](https://scielo.br) - Artigos brasileiros
- **arXiv**: [arxiv.org](https://arxiv.org) - Preprints em ciências exatas
- **DOAJ**: [doaj.org](https://doaj.org) - Revistas de acesso aberto
- **ResearchGate**: [researchgate.net](https://researchgate.net) - Rede social acadêmica

### **Ferramentas úteis:**
- **Google Acadêmico**: Geração automática de BibTeX
- **doi2bib.org**: Conversão de DOI para BibTeX
- **Zotero**: Gerenciador de referências gratuito
- **Grammarly**: Correção ortográfica em inglês
- **DeepL**: Traduções acadêmicas

## 📞 Suporte

Se você encontrar problemas:
1. Leia os comentários extensos no código
2. Consulte a documentação do abntex2
3. Procure ajuda nos fóruns do Overleaf
4. Entre em contato com seu orientador
5. Use as 22 categorias de exemplos como referência

## 📄 Licença

Este template é baseado na classe `abntex2` e está disponível para uso acadêmico livre.

## 🎯 Versões e atualizações

**Versão atual**: 2025.1
- ✅ 22 categorias de referências bibliográficas
- ✅ Suporte completo a fontes digitais modernas
- ✅ Documentação extensiva e comentários detalhados
- ✅ Compatibilidade com ferramentas modernas de pesquisa
- ✅ Validações e checklists de qualidade

---

**Desenvolvido para facilitar a vida dos estudantes do IGCE-UNESP!** 🎓 

*Contribuições e sugestões são sempre bem-vindas para manter este template atualizado com as melhores práticas acadêmicas.* 