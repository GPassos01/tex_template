# 🚀 Guia Rápido: Template ABNT Universalizado para Overleaf

## 📁 Arquivos necessários

Para usar este template, você precisa dos seguintes arquivos:

1. **`template.tex`** - Arquivo principal do template
2. **`referencias.bib`** - Arquivo de referências bibliográficas com exemplos abrangentes
3. **Logos da sua instituição** (ex: `unesp_logo.jpg`, `igce_brasao.jpg`)

> **💡 Dica:** O template é adaptável para qualquer universidade brasileira!

## 🔧 Configuração inicial no Overleaf

### Passo 1: Criar o projeto
1. Acesse [Overleaf.com](https://www.overleaf.com)
2. Faça login na sua conta
3. Clique em **"New Project"**
4. Selecione **"Upload Project"**
5. Faça upload dos arquivos listados acima

### Passo 2: Configurar o compilador
1. Clique no ícone ⚙️ (Menu) no canto superior esquerdo
2. Vá em **"Settings"**
3. Em **"Compiler"**, selecione **"pdfLaTeX"**
4. Clique em **"Save project settings"**

### Passo 3: Definir arquivo principal
1. No menu lateral esquerdo, clique com botão direito em `template.tex`
2. Selecione **"Set as main file"**

## 🏛️ Configurando para sua instituição

### Para IGCE-UNESP (padrão)
Não precisa alterar nada! Apenas adicione os logos:
- `unesp_logo.jpg`
- `igce_brasao.jpg`

### Para outras universidades
Localize a seção **"OPÇÕES DE CONFIGURAÇÃO DA CAPA"** e descomente/adapte:

```latex
% Para USP:
% \renewcommand{\logoesquerda}{usp_logo.jpg}
% \renewcommand{\logodireita}{logo_sua_unidade.jpg}
% \renewcommand{\instituicao}{UNIVERSIDADE DE SÃO PAULO}
% \renewcommand{\faculdade}{NOME DA SUA FACULDADE}
% \renewcommand{\cidade}{Sua Cidade - SP}

% Para UNICAMP:
% \renewcommand{\logoesquerda}{unicamp_logo.jpg}
% \renewcommand{\logodireita}{}
% \renewcommand{\instituicao}{UNIVERSIDADE ESTADUAL DE CAMPINAS}
% \renewcommand{\faculdade}{NOME DA SUA FACULDADE}
% \renewcommand{\cidade}{Campinas - SP}
```

## 📚 Configurando para sua área

### 🔬 Ciências Exatas/Engenharias
Descomente os pacotes necessários:
```latex
% \usepackage{mathtools}           % Matemática avançada
% \usepackage{physics}             % Notação física
% \usepackage{siunitx}             % Unidades SI
% \usepackage[version=4]{mhchem}   % Fórmulas químicas
```

### 💻 Computação/Tecnologia
Configure a linguagem de programação:
```latex
language=Python,                 % Altere para: Java, C, C++, etc.
numbers=left,                    % Descomente para numerar linhas
```

### 📖 Humanas/Sociais
Para citações numéricas:
```latex
% \usepackage[num]{abntex2cite}   % Sistema numérico [1], [2]
% \usepackage{csquotes}            % Citações contextuais
% \usepackage{gb4e}                % Exemplos linguísticos
```

## 📑 Configurando tipo de trabalho

Escolha o tipo do seu trabalho:

```latex
% TCC (já ativo):
\newcommand{\tipotrabalho}{Trabalho de Conclusão de Curso}

% Dissertação (descomente):
% \renewcommand{\tipotrabalho}{Dissertação}
% \renewcommand{\grautrabalho}{Mestrado}

% Tese (descomente):
% \renewcommand{\tipotrabalho}{Tese}
% \renewcommand{\grautrabalho}{Doutorado}
```

## ✏️ Personalizando seu trabalho

### 📝 Informações básicas

Localize e substitua as seguintes informações:

```latex
% Na seção da capa (linha ~200):
{\large NOME DO PRIMEIRO AUTOR}          → Seu nome completo
{\large NOME DO SEGUNDO AUTOR}           → Nome do colega (ou remova)
{\large TÍTULO DO SEU TRABALHO}          → Título do seu trabalho

% Na folha de rosto (linha ~250):
NOME DO SEU CURSO                        → Ex: Ciência da Computação
NOME DA DISCIPLINA                       → Ex: Trabalho de Conclusão de Curso  
NOME DO PROFESSOR ORIENTADOR             → Nome do professor

% Nos metadados (linha ~170):
pdftitle={TÍTULO DO SEU TRABALHO AQUI}   → Título do trabalho
pdfauthor={SEU NOME AQUI}                → Seu nome
```

### 📖 Resumo e palavras-chave

```latex
% Localize esta seção (linha ~320):
\begin{resumo}
Escreva aqui o resumo...                 → Seu resumo (150-500 palavras)

\textbf{Palavras-chave:} palavra1...     → Suas palavras-chave (3-5)
\end{resumo}
```

## 📚 Escrevendo o conteúdo

### 🗂️ Estrutura dos capítulos

O template já vem com a estrutura básica:

```latex
\chapter{INTRODUÇÃO}                     % Capítulo 1
\section{Problema e Justificativa}      % Seção 1.1
\section{Objetivos}                      % Seção 1.2

\chapter{FUNDAMENTAÇÃO TEÓRICA}          % Capítulo 2
\chapter{METODOLOGIA}                    % Capítulo 3
\chapter{RESULTADOS E DISCUSSÃO}         % Capítulo 4
\chapter{CONSIDERAÇÕES FINAIS}           % Capítulo 5
```

### 🖼️ Inserindo figuras

```latex
\begin{figure}[h]
  \centering
  \includegraphics[width=0.7\textwidth]{minha_imagem.png}
  \caption{Descrição da imagem}
  \caption*{Fonte: Elaboração própria.}
  \label{fig:exemplo}
\end{figure}
```

**Dica:** Faça upload da imagem primeiro no Overleaf!

### 📊 Inserindo tabelas

```latex
\begin{table}[h]
\centering
\caption{Título da tabela}
\label{tab:exemplo}
\begin{tabular}{|c|c|c|}
\hline
\textbf{Coluna 1} & \textbf{Coluna 2} & \textbf{Coluna 3} \\
\hline
Dado A & Dado B & Dado C \\
Dado D & Dado E & Dado F \\
\hline
\end{tabular}
\caption*{Fonte: Elaboração própria.}
\end{table}
```

### 💻 Inserindo código

```latex
\begin{lstlisting}[language=Python, caption=Exemplo de código]
def somar(a, b):
    """Função que soma dois números"""
    return a + b

resultado = somar(5, 3)
print(f"O resultado é: {resultado}")
\end{lstlisting}
```

**Linguagens suportadas:** Python, Java, C, C++, JavaScript, SQL, HTML, etc.

### 🔢 Inserindo equações

```latex
% Equação simples no texto:
A fórmula de Pitágoras é $a^2 + b^2 = c^2$.

% Equação numerada em linha separada:
\begin{equation}
E = mc^2
\label{eq:einstein}
\end{equation}

% Sistema de equações:
\begin{align}
x + y &= 5 \\
2x - y &= 1
\end{align}

% Para referenciar: veja a Equação \ref{eq:einstein}
```

### 🧪 Exemplos por área

#### Química (se habilitado mhchem):
```latex
% Reação química:
\ce{H2SO4 + 2NaOH -> Na2SO4 + 2H2O}

% Fórmula molecular:
\ce{C6H12O6} (glicose)
```

#### Física (se habilitado physics):
```latex
% Derivada:
\dv{x}{t} = v

% Integral:
\int_0^{\infty} e^{-x} \dd{x} = 1

% Vetor:
\vec{F} = m\vec{a}
```

#### Linguística (se habilitado gb4e):
```latex
% Exemplos numerados:
\begin{exe}
\ex O menino comprou o livro.
\ex *O menino compraram o livro.
\end{exe}
```

#### Algoritmos
```latex
% Usar se algorithm estiver habilitado:
\begin{algorithm}
\caption{Busca Binária}
\begin{algorithmic}
\STATE $inicio \leftarrow 0$
\STATE $fim \leftarrow n-1$
\WHILE{$inicio \leq fim$}
    \STATE $meio \leftarrow (inicio + fim) / 2$
    \IF{$array[meio] = x$}
        \RETURN $meio$
    \ENDIF
\ENDWHILE
\end{algorithmic}
\end{algorithm}
```

## 📖 Referências bibliográficas - Guia Completo

### 📝 Tipos de referências incluídas no template

O arquivo `referencias.bib` já vem com **22 categorias** de exemplos:

#### 📚 **Fontes tradicionais:**
- **Livros**: monografias, coletâneas
- **Artigos científicos**: periódicos nacionais e internacionais
- **Teses e dissertações**: mestrado e doutorado
- **Capítulos de livros**: obras organizadas

#### 🌐 **Fontes digitais modernas:**
- **Sites governamentais**: IBGE, MEC, ANVISA, Banco Central
- **Empresas de tecnologia**: GitHub, Google, Microsoft, OpenAI, NVIDIA
- **Organizações internacionais**: WHO, IEEE, OECD, ONU
- **Documentação técnica**: Python, Docker, Kubernetes

#### 📊 **Bases de dados e pesquisa:**
- **Datasets**: Kaggle, World Bank, DATASUS
- **Preprints**: arXiv, bioRxiv
- **Relatórios técnicos**: NASA, IPCC, CETIC

#### 🎓 **Recursos educacionais:**
- **Vídeos educacionais**: MIT OpenCourseWare, Stanford
- **Podcasts**: especializados em ciência e tecnologia
- **Cursos online**: Coursera, edX
- **Software**: R, SPSS, QGIS

#### 📰 **Mídia e comunicação:**
- **Jornais**: Folha de S. Paulo, Estado de S. Paulo, The Economist
- **Blogs especializados**: Medium, Towards Data Science, HackerNoon
- **Redes sociais**: apenas quando academicamente relevante

#### ⚖️ **Documentos oficiais:**
- **Legislação**: LGPD, Marco Civil da Internet
- **Normas técnicas**: ABNT, ISO
- **Dicionários especializados**: Gartner, TechTerms

### 📝 Como usar as referências

#### **Passo 1: Escolher o tipo de referência**
Abra o arquivo `referencias.bib` e encontre um exemplo similar ao que você precisa:

```bibtex
% Para artigo científico:
@article{exemplo2023,
  title={Título do Artigo},
  author={Sobrenome, Nome},
  journal={Nome da Revista},
  year={2023},
  volume={10},
  pages={45--62}
}

% Para site governamental:
@misc{exemplo2023site,
  title={Título da Página},
  author={{Nome da Organização}},
  year={2023},
  howpublished={Nome da Instituição},
  note={Disponível em: \url{https://exemplo.gov.br}. Acesso em: 15 jan. 2023}
}
```

#### **Passo 2: Adaptar para sua fonte**
Substitua as informações pelos dados reais da sua fonte:

```bibtex
@article{silva2023machine,
  title={Machine Learning na Agricultura de Precisão},
  author={Silva, João Carlos and Santos, Maria},
  journal={Revista Brasileira de Tecnologia},
  year={2023},
  volume={15},
  number={2},
  pages={123--145},
  doi={10.1234/rbt.2023.15.2.123}
}
```

#### **Passo 3: Citar no texto**
Use os comandos de citação:

```latex
% Citação simples:
Segundo Silva e Santos \cite{silva2023machine}, a IA é fundamental...

% Citação integrada:
\citeonline{silva2023machine} demonstraram que...

% Com página específica:
Como afirma o autor \cite[p. 130]{silva2023machine}...

% Múltiplas citações:
Diversos estudos \cite{silva2023machine,santos2022tech} mostram...
```

### 🔍 **Dicas especiais por tipo de fonte:**

#### **Sites e recursos online:**
```bibtex
@misc{exemplo2023,
  title={Título da Página},
  author={{Nome da Organização}},  % Use chaves duplas para organizações
  year={2023},
  howpublished={Nome da Empresa/Instituição},
  note={Disponível em: \url{https://exemplo.com}. Acesso em: 15 jan. 2023}
}
```
- ✅ **SEMPRE** inclua data de acesso
- ✅ Use `{{}}` para organizações sem autor individual
- ✅ Teste se a URL está funcionando

#### **Software e documentação:**
```bibtex
@misc{python2023,
  title={Python 3.11 Documentation},
  author={{Python Software Foundation}},
  year={2023},
  howpublished={Python Software Foundation},
  note={Versão 3.11. Disponível em: \url{https://docs.python.org/3.11/}. Acesso em: 20 jun. 2023}
}
```
- ✅ Inclua versão quando relevante
- ✅ Mencione o desenvolvedor/mantenedor

#### **Vídeos e podcasts:**
```bibtex
@misc{mit2023lecture,
  title={Introduction to Machine Learning -- Lecture 1},
  author={Ng, Andrew},
  year={2023},
  howpublished={MIT OpenCourseWare. YouTube},
  note={Duração: 50 min. Disponível em: \url{https://youtube.com/watch?v=...}. Acesso em: 10 fev. 2023}
}
```
- ✅ Inclua duração quando relevante
- ✅ Mencione a plataforma

#### **Preprints:**
```bibtex
@misc{silva2023preprint,
  title={Quantum Computing for Drug Discovery},
  author={Silva, Ana and Costa, Pedro},
  year={2023},
  howpublished={arXiv preprint},
  note={arXiv:2308.12345. Disponível em: \url{https://arxiv.org/abs/2308.12345}. Acesso em: 15 ago. 2023}
}
```
- ✅ Mencione o repositório (arXiv, bioRxiv, etc.)
- ✅ Inclua o identificador único

#### **Redes sociais (use com cautela):**
```bibtex
@misc{especialista2023,
  title={Important announcement about new AI regulations},
  author={Nome, Especialista},
  year={2023},
  month={jan},
  day={15},
  howpublished={Twitter: @especialista},
  note={Disponível em: \url{https://twitter.com/especialista/status/...}. Acesso em: 16 jan. 2023}
}
```
- ⚠️ **Use apenas quando academicamente relevante**
- ✅ Cite especialistas reconhecidos na área

### 🔧 **Ferramentas para gerar referências:**

#### **Google Acadêmico:**
1. Pesquise o artigo
2. Clique em "Citar"
3. Selecione "BibTeX"
4. Copie e cole no `referencias.bib`

#### **DOI para BibTeX:**
- Acesse [doi2bib.org](https://doi2bib.org)
- Cole o DOI do artigo
- Copie o resultado gerado

#### **Gerenciadores de referência:**
- **Zotero**: [zotero.org](https://zotero.org) - Gratuito
- **Mendeley**: [mendeley.com](https://mendeley.com) - Gratuito
- **EndNote**: Pago, mas muito completo

### ✅ **Checklist de qualidade das referências:**

- [ ] Todas as referências têm autor ou organização?
- [ ] URLs foram testadas recentemente?
- [ ] Datas de acesso estão presentes?
- [ ] Informações estão completas?
- [ ] Fontes são confiáveis?
- [ ] Há diversidade de tipos de fonte?
- [ ] Formato ABNT está correto?
- [ ] Citações no texto correspondem às referências?

## 🔄 Compilando o documento

### 📋 Passo a passo

1. **Primeira compilação:** Clique em "Recompile"
2. **Se usar referências:** Compile novamente (2-3 vezes)
3. **Verifique erros:** Olhe o painel de log abaixo

### ⚠️ Problemas comuns

| Erro | Solução |
|------|---------|
| Imagem não encontrada | Verifique se o arquivo foi carregado |
| Referência não aparece | Compile múltiplas vezes |
| Caracteres estranhos | Use codificação UTF-8 |
| Erro de compilação | Verifique sintaxe do LaTeX |
| URL muito longa | Use quebra de linha ou encurte |

## 📋 Checklist final

Antes de entregar seu trabalho:

- [ ] Todos os campos pessoais foram alterados?
- [ ] Resumo e palavras-chave estão corretos?
- [ ] Todas as figuras têm fonte e legenda?
- [ ] Todas as tabelas têm fonte e legenda?
- [ ] As referências estão completas e formatadas?
- [ ] Todas as URLs foram testadas?
- [ ] O documento compila sem erros?
- [ ] A numeração de páginas está correta?
- [ ] O sumário está atualizado?
- [ ] As citações no texto correspondem às referências?

## 🆘 Ajuda e suporte

### 📚 Recursos úteis

- [Documentação do Overleaf](https://www.overleaf.com/learn)
- [Manual da classe abntex2](http://mirrors.ctan.org/macros/latex/contrib/abntex2/doc/abntex2.pdf)
- [Normas ABNT para trabalhos acadêmicos](https://www.abnt.org.br)
- [Google Acadêmico](https://scholar.google.com.br) - Para gerar referências BibTeX

### 🔍 Como encontrar ajuda

1. **Leia os comentários** no código do template
2. **Consulte o README** do projeto
3. **Procure no Google** erros específicos + "LaTeX"
4. **Pergunte ao professor** ou orientador
5. **Use fóruns** como Stack Overflow ou Reddit

### 🌟 **Recursos adicionais para referências:**

- **Portal de Periódicos CAPES**: [periodicos.capes.gov.br](https://periodicos.capes.gov.br)
- **SciELO**: [scielo.br](https://scielo.br) - Artigos científicos brasileiros
- **arXiv**: [arxiv.org](https://arxiv.org) - Preprints em física, matemática, computação
- **DOAJ**: [doaj.org](https://doaj.org) - Diretório de revistas de acesso aberto
- **ResearchGate**: [researchgate.net](https://researchgate.net) - Rede social acadêmica

## 💡 Dicas extras

### ⚡ Produtividade
- Use `Ctrl+/` para comentar/descomentar linhas
- `Ctrl+S` salva automaticamente
- `Ctrl+Z` desfaz alterações
- Use o histórico de versões do Overleaf

### 🎯 Boas práticas para referências
- **Backup**: Mantenha cópia do `referencias.bib`
- **Organização**: Agrupe por tipo ou área
- **Consistência**: Use padrão uniforme para nomes das chaves
- **Qualidade**: Prefira fontes primárias e confiáveis
- **Atualização**: Verifique links periodicamente
- **Diversidade**: Use diferentes tipos de fonte quando apropriado

### 🔄 **Workflow recomendado:**
1. **Pesquise** fontes confiáveis
2. **Colete** informações completas
3. **Organize** no gerenciador de referências
4. **Exporte** para BibTeX
5. **Importe** no `referencias.bib`
6. **Cite** no texto
7. **Compile** o documento
8. **Revise** a formatação

---

**🎓 Sucesso no seu trabalho acadêmico!** 