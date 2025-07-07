# 📎 Elementos Pós-textuais

Esta pasta contém os elementos que aparecem **após** o texto principal.

## 📋 **Elementos Incluídos**

### **Obrigatórios (ABNT):**
- `referencias.bib` - Bibliografia (já está na raiz do template)

### **Opcionais:**
- `anexos.tex` - Anexos (documentos não elaborados pelo autor)
- `apendices.tex` - Apêndices (documentos elaborados pelo autor)
- `glossario.tex` - Glossário de termos
- `indice.tex` - Índice remissivo

## 🎯 **Como usar no main.tex**

```latex
% Após os capítulos principais

% Inicia parte pós-textual
\postextual

% Bibliografia (automática)
\bibliography{referencias}

% Elementos opcionais
\input{sections/pos_textuais/apendices}
\input{sections/pos_textuais/anexos}
\input{sections/pos_textuais/glossario}
```

## 📝 **Diferença entre Anexos e Apêndices**

### **📎 Anexos**
- Documentos **não elaborados** pelo autor
- Exemplos: leis, regulamentos, formulários, mapas
- Identificação: ANEXO A, ANEXO B, etc.

### **📋 Apêndices**
- Documentos **elaborados** pelo autor
- Exemplos: questionários criados, códigos, tabelas complementares
- Identificação: APÊNDICE A, APÊNDICE B, etc.

Esta organização segue rigorosamente as normas ABNT! 📚 