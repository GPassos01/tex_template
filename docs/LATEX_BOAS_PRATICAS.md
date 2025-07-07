# 📝 Boas Práticas LaTeX para Escrita Científica

Este guia apresenta as melhores práticas para escrita científica em LaTeX, baseado no [LaTeX Best Practices](https://github.com/temken/latex-best-practices) e outros recursos acadêmicos.

## 🎯 **Princípios Fundamentais**

### **1. Deixe o LaTeX controlar a formatação**
- ❌ **Evite**: `\vspace{}`, `\medskip`, `\newline`, `\clearpage`
- ✅ **Use**: Comandos estruturais como `\section{}`, `\paragraph{}`
- 📝 **Justificativa**: LaTeX foi projetado para formatação automática

### **2. Consistência sobre regras**
- Mantenha um padrão ao longo do documento
- Documente suas convenções no início do projeto
- Use comandos personalizados para elementos repetitivos

## 📝 **Layout de Texto**

### **Espaços não-quebráveis**
Use `~` para evitar quebras indesejadas:

```latex
% ✅ Correto:
A temperatura foi de 25~°C.
Como visto na Fig.~\ref{fig:exemplo}.
Segundo Silva~\cite{silva2023}, o método...
A Eq.~\eqref{eq:einstein} demonstra que...

% ❌ Incorreto:
A temperatura foi de 25 °C.
Como visto na Fig. \ref{fig:exemplo}.
```

**Quando usar `~`:**
- Entre números e unidades: `10~m`, `5~kg`
- Antes de referências: `Fig.~\ref{}`, `Tab.~\ref{}`
- Antes de citações: `Silva~\cite{}`
- Números pequenos: `apenas~3 amostras`

### **Espaçamento entre frases**
```latex
% ✅ Para abreviações no meio da frase:
Por exemplo\, (e.g.\,) este método...
Isto é\, (i.e.\,) uma abordagem...

% ✅ Alternativa (desabilita espaçamento duplo):
\frenchspacing  % No preâmbulo
```

### **Aspas corretas**
```latex
% ✅ Aspas simples:
`exemplo'

% ✅ Aspas duplas:
``exemplo''

% ✅ Com csquotes:
\enquote{exemplo}

% ❌ Incorreto:
"exemplo"
'exemplo'
```

### **Parágrafos**
```latex
% ✅ Correto (linha em branco):
Primeiro parágrafo.

Segundo parágrafo.

% ✅ Para legibilidade no código:
Primeiro parágrafo.
%
Segundo parágrafo.

% ❌ Incorreto:
Primeiro parágrafo. \newline
Segundo parágrafo.
```

## 🔢 **Equações e Matemática**

### **Pontuação em equações**
Equações fazem parte do texto e precisam de pontuação:

```latex
% ✅ Correto:
A fórmula de Einstein é dada por
\begin{equation}
E = mc^2 \,.
\label{eq:einstein}
\end{equation}

% Para sistemas:
\begin{align}
x + y &= 5 \,, \label{eq:sistema_a} \\
2x - y &= 1 \,. \label{eq:sistema_b}
\end{align}

% ❌ Incorreto (sem pontuação):
\begin{equation}
E = mc^2
\end{equation}
```

### **Diferencial não-itálico**
```latex
% ✅ Correto:
\int f(x) \, \mathrm{d}x
\int_{0}^{\infty} e^{-x} \, \mathrm{d}x

% ✅ Defina um comando:
\newcommand{\dd}{\mathrm{d}}
\int f(x) \, \dd x

% ❌ Incorreto (itálico):
\int f(x) dx
```

### **Subscritos descritivos**
```latex
% ✅ Correto (não-itálico para palavras):
N_{\mathrm{partículas}}
T_{\mathrm{max}}
v_{\mathrm{inicial}}

% ✅ Simplificado:
N_\mathrm{partículas}  % Sem chaves para comando simples

% ❌ Incorreto (itálico):
N_{partículas}
```

### **Parênteses adaptativos**
```latex
% ✅ Correto:
\left(\frac{a}{b}\right)
\left[\frac{1}{2}\right]

% ✅ Controle manual quando necessário:
\Bigg(\frac{a}{b}\Bigg)

% ❌ Incorreto (parênteses pequenos):
(\frac{a}{b})
```

### **Espaçamento em integrais**
```latex
% ✅ Correto:
\int_{0}^{1} f(x) \, \dd x

% ✅ Com limites complexos:
\int_{x=0}^{x=\infty} f(x,y) \, \dd x \, \dd y

% ❌ Incorreto (sem espaçamento):
\int_{0}^{1} f(x) dx
```

## 📊 **Referências e Labels**

### **Convenção de nomenclatura**
Use prefixos descritivos para labels:

```latex
% ✅ Equações:
\label{eq:teorema_principal}
\label{eq:conservacao_energia}
\label{eq:sistema_linear}

% ✅ Figuras:
\label{fig:diagrama_blocos}
\label{fig:resultados_experimento}
\label{fig:arquitetura_sistema}

% ✅ Tabelas:
\label{tab:resultados_comparacao}
\label{tab:parametros_entrada}

% ✅ Seções:
\label{sec:metodologia}
\label{sec:analise_resultados}

% ✅ Algoritmos:
\label{alg:busca_binaria}
\label{alg:ordenacao_rapida}

% ✅ Códigos:
\label{lst:implementacao_fibonacci}
\label{lst:processamento_dados}
```

### **Comandos de referência**
```latex
% ✅ Para equações (com parênteses automáticos):
A \eqnref{eq:einstein} foi proposta por Einstein.
% ou: A Eq.~\eqref{eq:einstein} foi proposta...

% ✅ Para figuras e tabelas:
A \figref{fig:resultados} mostra que...
Os dados da \tabref{tab:comparacao} indicam...

% ✅ Início de frase (por extenso):
A Equação~\eqref{eq:exemplo} demonstra...
A Figura~\ref{fig:exemplo} apresenta...

% ❌ Incorreto (sem espaço não-quebrável):
A Fig. \ref{fig:exemplo}
```

### **Comandos úteis personalizados**
Adicione no preâmbulo:

```latex
% Comandos para referências automáticas
\newcommand{\figref}[1]{Fig.~\ref{#1}}
\newcommand{\tabref}[1]{Tab.~\ref{#1}}
\newcommand{\eqnref}[1]{Eq.~\eqref{#1}}
\newcommand{\secref}[1]{Seção~\ref{#1}}
\newcommand{\algref}[1]{Algoritmo~\ref{#1}}
```

## 🖼️ **Figuras e Tabelas**

### **Posicionamento**
```latex
% ✅ Melhor prática (topo ou base):
\begin{figure}[tb]
\begin{table}[tb]

% ✅ Para documentos com duas colunas:
\begin{figure*}[tb]  % Figura em página inteira

% ❌ Evite (forçar posição específica):
\begin{figure}[h]    % "here" pode causar problemas
\begin{figure}[H]    % Posição rígida
```

### **Estrutura de figuras**
```latex
\begin{figure}[tb]
  \centering
  \includegraphics[width=0.7\textwidth]{arquivo_figura}
  \caption{Descrição clara e informativa da figura que explica 
           o que está sendo mostrado e sua relevância}
  \caption*{Fonte: Elaboração própria.}
  \label{fig:nome_descritivo}
\end{figure}
```

### **Estrutura de tabelas**
```latex
\begin{table}[tb]
\centering
\caption{Título descritivo da tabela (antes da tabela)}
\label{tab:nome_descritivo}
\begin{tabular}{|l|c|c|}
\hline
\textbf{Parâmetro} & \textbf{Valor A} & \textbf{Valor B} \\
\hline
Item 1 & 10 & 20 \\
Item 2 & 15 & 25 \\
\hline
\end{tabular}
\caption*{Fonte: Elaboração própria.}
\end{table}
```

### **Tabelas profissionais com booktabs**
```latex
\usepackage{booktabs}  % No preâmbulo

\begin{table}[tb]
\centering
\caption{Resultados experimentais}
\label{tab:resultados}
\begin{tabular}{lcc}
\toprule
Método & Precisão & Recall \\
\midrule
Método A & 0.85 & 0.80 \\
Método B & 0.90 & 0.75 \\
Método C & 0.88 & 0.85 \\
\bottomrule
\end{tabular}
\caption*{Fonte: Elaboração própria.}
\end{table}
```

## 📚 **Citações Bibliográficas**

### **Espaçamento em citações**
```latex
% ✅ Correto:
Segundo Silva~\cite{silva2023}, o método...
Como demonstrado por vários autores~\cite{silva2023,chen2023}...

% ✅ Comando personalizado:
\newcommand{\citep}[1]{~\cite{#1}}
Segundo Silva\citep{silva2023}...

% ❌ Incorreto:
Segundo Silva \cite{silva2023}...
```

### **Citações múltiplas**
```latex
% ✅ Correto:
\cite{silva2023,chen2023,santos2021}

% ✅ Com páginas específicas:
\cite[p.~45]{silva2023}
\cite[p.~23--25]{chen2023}

% ❌ Incorreto:
\cite{silva2023}, \cite{chen2023}, \cite{santos2021}
```

### **Citações no início de frases**
```latex
% ✅ Correto:
Silva (2023) propôs um novo método...
\citeonline{silva2023} propôs um novo método...

% ✅ Quando iniciar com referência:
\cite{silva2023} propuseram...
% Melhor: Os autores~\cite{silva2023} propuseram...

% ❌ Incorreto:
\cite{silva2023} propôs... % singular/plural inconsistente
```

## 💻 **Códigos e Algoritmos**

### **Configuração de códigos**
```latex
\begin{lstlisting}[
  language=Python,
  caption=Implementação do algoritmo proposto,
  label=lst:algoritmo_principal,
  numbers=left,
  frame=single
]
def exemplo_funcao(parametro):
    """Documentação da função"""
    resultado = parametro * 2
    return resultado
\end{lstlisting}
```

### **Algoritmos estruturados**
```latex
\begin{algorithm}[tb]
\caption{Algoritmo de busca binária}
\label{alg:busca_binaria}
\begin{algorithmic}[1]
\REQUIRE Array $A$ ordenado, valor $x$ a buscar
\ENSURE Índice de $x$ em $A$ ou $-1$ se não encontrado
\STATE $\text{início} \leftarrow 0$
\STATE $\text{fim} \leftarrow |A| - 1$
\WHILE{$\text{início} \leq \text{fim}$}
    \STATE $\text{meio} \leftarrow \lfloor(\text{início} + \text{fim})/2\rfloor$
    \IF{$A[\text{meio}] = x$}
        \RETURN meio
    \ELSIF{$A[\text{meio}] < x$}
        \STATE $\text{início} \leftarrow \text{meio} + 1$
    \ELSE
        \STATE $\text{fim} \leftarrow \text{meio} - 1$
    \ENDIF
\ENDWHILE
\RETURN $-1$
\end{algorithmic}
\end{algorithm}
```

## 🔧 **Comandos Úteis**

### **Comandos para escrita científica**
Adicione no preâmbulo:

```latex
% Diferencial não-itálico
\newcommand{\dd}{\mathrm{d}}

% Referências automáticas
\newcommand{\figref}[1]{Fig.~\ref{#1}}
\newcommand{\tabref}[1]{Tab.~\ref{#1}}
\newcommand{\eqnref}[1]{Eq.~\eqref{#1}}

% Unidades físicas
\newcommand{\unit}[1]{\,\mathrm{#1}}

% Citações com espaço automático
\newcommand{\citep}[1]{~\cite{#1}}

% Vetores
\renewcommand{\vec}[1]{\boldsymbol{#1}}

% Números complexos
\newcommand{\ii}{\mathrm{i}}
```

### **Uso dos comandos**
```latex
% Integral:
\int_{0}^{1} f(x) \, \dd x

% Referências:
\figref{fig:resultado}
\tabref{tab:dados}
\eqnref{eq:principal}

% Unidades:
A temperatura foi de 25\unit{°C}.

% Vetores:
\vec{F} = m\vec{a}

% Números complexos:
z = a + b\ii
```

## ✅ **Checklist de Boas Práticas**

### **📝 Texto**
- [ ] Uso de `~` antes de referências e citações
- [ ] Aspas corretas: `` `` e `''`
- [ ] Abreviações com `\,`: `e.g.\,`
- [ ] Parágrafos com linhas em branco

### **🔢 Matemática**
- [ ] Pontuação em equações: `\,.` ou `\,,`
- [ ] Diferencial não-itálico: `\mathrm{d}x`
- [ ] Subscripts descritivos: `N_\mathrm{partículas}`
- [ ] Parênteses adaptativos: `\left(\right)`

### **📊 Referências**
- [ ] Labels descritivos: `eq:nome`, `fig:nome`
- [ ] Comando `\eqref{}` para equações
- [ ] Espaço não-quebrável: `Fig.~\ref{}`
- [ ] Por extenso no início de frase

### **🖼️ Figuras/Tabelas**
- [ ] Posicionamento `[tb]`
- [ ] Labels após caption
- [ ] Fonte sempre presente
- [ ] Descrições informativas

### **📚 Citações**
- [ ] Espaço não-quebrável: `Silva~\cite{}`
- [ ] Múltiplas citações juntas
- [ ] Formato correto no início de frases

---

## 📚 **Recursos Adicionais**

- [LaTeX Best Practices](https://github.com/temken/latex-best-practices) - Guia de referência
- [Overleaf Documentation](https://www.overleaf.com/learn) - Tutoriais completos
- [LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX) - Referência abrangente
- [ABNT NBR 6023](https://www.abnt.org.br/normalizacao/lista-de-normas/abnt) - Normas bibliográficas

**💡 Lembre-se: consistência é mais importante que seguir todas as regras ao pé da letra!** 