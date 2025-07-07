# 📝 Changelog

Todas as mudanças notáveis neste projeto serão documentadas neste arquivo.

## [2025.1] - 2025-01-XX

### 🎉 **Lançamento Inicial com Boas Práticas GitHub**

#### ✨ **Novo**
- **README principal atrativo** com preview visual e navegação clara
- **Estrutura de documentação organizada** em pasta `docs/`
- **Templates de issues** para bugs, features e perguntas
- **Guia de contribuição completo** com código de conduta
- **Sistema de referências modernizado** com 22 categorias
- **🆕 Boas práticas LaTeX científico** baseadas no [LaTeX Best Practices](https://github.com/temken/latex-best-practices)
- **FAQ abrangente** para todas as dúvidas comuns
- **Licença MIT** e arquivo `.gitignore` apropriado

#### 📚 **Documentação Reorganizada**
- `docs/GUIA_RAPIDO.md` - Começar em 5 minutos
- `docs/CONFIGURACAO.md` - Configuração detalhada por área
- `docs/LATEX_BOAS_PRATICAS.md` - **NOVO!** Guia completo de boas práticas LaTeX
- `docs/FAQ.md` - Perguntas frequentes com respostas completas
- `CONTRIBUTING.md` - Guia para contribuidores
- `CHANGELOG.md` - Histórico de mudanças

#### 📝 **Boas Práticas LaTeX Científico** ⭐ **DESTAQUE**
- **Comandos automáticos**: `\figref{}`, `\tabref{}`, `\eqnref{}`, `\dd`
- **Formatação matemática profissional**: diferenciais não-itálicos, pontuação em equações
- **Espaçamento inteligente**: `~` automático em referências e citações
- **Convenções científicas**: labels estruturados (`eq:`, `fig:`, `tab:`), aspas corretas
- **Posicionamento otimizado**: figuras e tabelas em `[tb]` (topo/base)
- **Exemplos práticos**: comparações antes/depois com melhores práticas
- **Checklist completo**: verificação de qualidade para documentos científicos

#### 📁 **Estrutura de Projeto Profissional** 🎯 **NOVO**
- **Separação clara**: `template/`, `assets/`, `scripts/`, `examples/`, `docs/`
- **Baseado em melhores práticas**: [Glenn J Lea](https://www.glennjlea.com/latex/latex-project_file_structure/), [paperProject](https://github.com/loicdtx/paperProject), [paper-template](https://github.com/vveitch/paper-template)
- **Scripts de compilação**: automação para Linux/macOS (`build.sh`) e Windows (`build.ps1`)
- **Organização de assets**: imagens categorizadas, logos institucionais
- **Capítulos modulares**: arquivos `.tex` separados em `sections/`
- **Documentação estruturada**: guias específicos para cada aspecto
- **Git otimizado**: `.gitignore` configurado para projetos LaTeX acadêmicos

#### 🌐 **Referências Bibliográficas Expandidas**
- **22 categorias** de exemplos incluindo:
  - Sites governamentais (IBGE, MEC, ANVISA, Banco Central)
  - Empresas tecnológicas (GitHub, Google, Microsoft, OpenAI)
  - Organizações internacionais (WHO, IEEE, ONU)
  - Documentação técnica (Python, Docker, Kubernetes)
  - Bases de dados (Kaggle, World Bank, DATASUS)
  - Preprints (arXiv, bioRxiv)
  - Vídeos educacionais (MIT, Stanford)
  - Podcasts especializados
  - Redes sociais (apenas quando academicamente relevante)
  - Software e aplicativos (R, SPSS, QGIS)
  - Blogs especializados (Medium, Towards Data Science)
  - Legislação e normas atualizadas

#### 🔧 **Infraestrutura GitHub**
- **Issue templates** estruturados para melhor suporte
- **Labels automáticos** para organização
- **Contribuição facilitada** com processo claro
- **Licença clara** (MIT)
- **Gitignore otimizado** para projetos LaTeX

#### 📊 **Melhorias no Template**
- **Comentários atualizados** referenciando nova estrutura
- **Instruções melhoradas** para 22 tipos de referência
- **Exemplos de citação modernos**
- **Compatibilidade total** com Overleaf e LaTeX local

### 🎯 **Baseado em Boas Práticas**

Este release foi desenvolvido seguindo as melhores práticas de projetos open source acadêmicos, inspirado em:
- [Academic Kickstart](https://github.com/tesslerc/academic-kickstart)
- [Academic Templates GitHub](https://github.com/topics/academic-template)
- Padrões da comunidade LaTeX brasileira
- Feedback de usuários de diferentes níveis de experiência

### 🏆 **Benefícios da Nova Estrutura**

#### **Para Iniciantes:**
- ✅ **Documentação em português** clara e objetiva
- ✅ **Guia de 5 minutos** para começar rapidamente
- ✅ **FAQ completo** com soluções para problemas comuns
- ✅ **Exemplos práticos** para cada funcionalidade

#### **Para Usuários Intermediários:**
- ✅ **Configuração avançada** por área do conhecimento
- ✅ **22 tipos de referência** para pesquisa moderna
- ✅ **Personalização visual** flexível
- ✅ **Suporte multi-universidade**

#### **Para Contribuidores:**
- ✅ **Estrutura organizada** fácil de contribuir
- ✅ **Templates de issues** para feedback estruturado
- ✅ **Processo claro** de contribuição
- ✅ **Código de conduta** inclusivo

### 📈 **Estatísticas**

- **Arquivos de documentação**: 7 (era 2) - incluindo guia de boas práticas
- **Tipos de referência**: 22 categorias (era ~8)
- **Templates de issues**: 3 tipos estruturados
- **Linhas de documentação**: ~3000 (era ~800) - +1000 do guia LaTeX
- **Comandos LaTeX úteis**: 8 novos comandos automáticos
- **Exemplos práticos**: 80+ (era ~15) - incluindo comparações antes/depois
- **Convenções de boas práticas**: 25+ regras implementadas

### 🔄 **Migração da Versão Anterior**

Se você usava a versão anterior:

1. **Seus arquivos continuam funcionando** - 100% compatível
2. **Nova documentação** disponível em `docs/`
3. **Mais exemplos** no `referencias.bib` atualizado
4. **Melhor suporte** via issues estruturadas

### 🚀 **Próximas Versões**

**Planejado para 2025.2:**
- [ ] Exemplos específicos por universidade
- [ ] Templates para apresentações
- [ ] Integração com gerenciadores de referência
- [ ] Testes automatizados de compilação
- [ ] Tradução para inglês/espanhol

**Roadmap futuro:**
- [ ] Templates para diferentes tipos de documento
- [ ] Themes visuais alternativos
- [ ] Suporte a XeLaTeX/LuaLaTeX
- [ ] Extensões para editores

### 🙏 **Agradecimentos**

- Comunidade LaTeX brasileira pelo feedback
- Projeto [abntex2](https://github.com/abntex/abntex2) pela base sólida
- [Overleaf](https://www.overleaf.com) pela plataforma excepcional
- Todos os contribuidores e usuários que tornaram isso possível

---

## 🔮 **Como Contribuir**

Encontrou um problema ou tem uma sugestão? 

- 🐛 [Reportar bug](https://github.com/seu-usuario/template-abnt-latex/issues/new?template=bug_report.md)
- 💡 [Sugerir feature](https://github.com/seu-usuario/template-abnt-latex/issues/new?template=feature_request.md)
- ❓ [Fazer pergunta](https://github.com/seu-usuario/template-abnt-latex/issues/new?template=question.md)

**Seu feedback é essencial para melhorar o template!** ⭐ 