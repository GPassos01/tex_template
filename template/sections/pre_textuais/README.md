# 📄 Elementos Pré-textuais

Esta pasta contém os elementos que aparecem **antes** do texto principal.

## 📋 **Elementos Incluídos**

### **Obrigatórios (ABNT):**
- `resumo.tex` - Resumo em português
- `abstract.tex` - Resumo em inglês
- `folha_aprovacao.tex` - Folha de aprovação (quando aplicável)

### **Opcionais:**
- `listas.tex` - Lista de figuras, tabelas, abreviaturas
- `agradecimentos.tex` - Agradecimentos
- `epigrafe.tex` - Epígrafe
- `dedicatoria.tex` - Dedicatória

## 🎯 **Como usar no main.tex**

```latex
% Após \begin{document} e antes de \textual

% Obrigatórios
\input{sections/pre_textuais/resumo}
\input{sections/pre_textuais/abstract}

% Opcionais
\input{sections/pre_textuais/agradecimentos}
\input{sections/pre_textuais/listas}

% Inicia parte textual
\textual
```

Esta organização segue as normas ABNT e facilita a manutenção! 📚 