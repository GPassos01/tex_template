# 🖼️ Imagens e Figuras

Esta pasta contém todas as imagens, figuras e gráficos utilizados no documento.

## 📁 **Organização Recomendada**

### **Por tipo de conteúdo:**
```
images/
├── figuras/              # Figuras principais do trabalho
│   ├── metodologia/      # Figuras do capítulo de metodologia
│   ├── resultados/       # Gráficos e figuras de resultados
│   └── introducao/       # Imagens da introdução
├── diagramas/           # Diagramas, fluxogramas, esquemas
├── graficos/            # Gráficos e charts gerados
├── capturas/            # Screenshots de sistemas/software
└── mapas/              # Mapas e imagens geográficas
```

### **Por capítulo:**
```
images/
├── cap01_introducao/
├── cap02_fundamentacao/
├── cap03_metodologia/
├── cap04_resultados/
└── cap05_conclusoes/
```

## 📋 **Formatos Recomendados**

### **✅ Formatos preferidos:**
- **PDF** - Melhor qualidade, escalável
- **PNG** - Boa qualidade, transparência
- **JPG** - Fotos, imagens coloridas
- **SVG** - Gráficos vetoriais (quando suportado)

### **❌ Evitar:**
- **BMP** - Arquivos muito grandes
- **GIF** - Baixa qualidade
- **TIFF** - Problemas de compatibilidade

## 🎯 **Como usar no LaTeX**

### **Incluir figura básica:**
```latex
\begin{figure}[tb]
  \centering
  \includegraphics[width=0.7\textwidth]{assets/images/figuras/metodologia/fluxograma.pdf}
  \caption{Fluxograma da metodologia proposta}
  \caption*{Fonte: Elaboração própria.}
  \label{fig:fluxograma_metodologia}
\end{figure}
```

### **Figura com múltiplas subfiguras:**
```latex
\begin{figure}[tb]
  \centering
  \begin{subfigure}[b]{0.48\textwidth}
    \includegraphics[width=\textwidth]{assets/images/resultados/grafico_a.pdf}
    \caption{Resultado A}
    \label{fig:resultado_a}
  \end{subfigure}
  \hfill
  \begin{subfigure}[b]{0.48\textwidth}
    \includegraphics[width=\textwidth]{assets/images/resultados/grafico_b.pdf}
    \caption{Resultado B}
    \label{fig:resultado_b}
  \end{subfigure}
  \caption{Comparação dos resultados obtidos}
  \caption*{Fonte: Dados da pesquisa.}
  \label{fig:comparacao_resultados}
\end{figure}
```

## 🔧 **Dicas de Qualidade**

### **Resolução:**
- **Figuras vetoriais**: Usar PDF quando possível
- **Imagens raster**: Mínimo 300 DPI
- **Screenshots**: Usar PNG para texto nítido

### **Tamanho:**
- Manter proporção adequada ao texto
- Testar legibilidade quando impressa
- Otimizar tamanho do arquivo quando possível

### **Cores:**
- Usar paleta consistente
- Verificar legibilidade em preto e branco
- Considerar acessibilidade (daltonismo)

## 📊 **Templates por Área**

### **Ciências Exatas:**
```
images/
├── equacoes/           # Demonstrações visuais
├── graficos/           # Plots e gráficos científicos
├── diagramas/          # Esquemas técnicos
└── simulacoes/         # Resultados de simulações
```

### **Computação:**
```
images/
├── arquiteturas/       # Diagramas de sistema
├── interfaces/         # Screenshots de UI
├── algoritmos/         # Fluxogramas de algoritmos
└── benchmarks/         # Gráficos de performance
```

### **Humanas:**
```
images/
├── documentos/         # Documentos históricos
├── mapas/             # Mapas geográficos/conceituais
├── infograficos/      # Visualizações de dados
└── esquemas/          # Modelos teóricos
```

## 📝 **Convenções de Nomenclatura**

### **Padrão recomendado:**
```
[tipo]_[capitulo]_[descricao].[extensao]

Exemplos:
fig_01_arquitetura_sistema.pdf
graf_04_desempenho_algoritmo.png
diagr_03_fluxo_metodologia.pdf
mapa_02_area_estudo.png
```

### **Evitar:**
- Espaços no nome: ❌ `minha figura.pdf`
- Acentos: ❌ `gráfico_resultados.pdf`
- Caracteres especiais: ❌ `fig@1.pdf`

## 🎓 **Checklist de Qualidade**

- [ ] **Resolução adequada** (300+ DPI para raster)
- [ ] **Formato otimizado** (PDF > PNG > JPG)
- [ ] **Legenda informativa** com fonte
- [ ] **Label único** para referência
- [ ] **Tamanho apropriado** no documento
- [ ] **Cores acessíveis** e legíveis
- [ ] **Nome de arquivo descritivo**
- [ ] **Organização por pasta** temática

Mantenha suas imagens organizadas para facilitar manutenção e colaboração! 🚀 