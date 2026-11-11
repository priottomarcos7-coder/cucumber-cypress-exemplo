# Automação E2E com Cypress, Cucumber e BDD

Projeto de automação de testes end-to-end desenvolvido como prática da formação em Engenharia de Qualidade de Software. A suíte utiliza o site público do [Cucumber](https://cucumber.io/) como aplicação sob teste.

O foco é aplicar BDD com Gherkin, integrar os cenários ao Cypress, reutilizar Step Definitions e executar os testes localmente e em pipeline CI.

## O que o projeto demonstra

- Escrita de cenários em Gherkin, em português.
- Integração entre Cypress e Cucumber.
- Implementação de Step Definitions reutilizáveis.
- Organização e execução de cenários por tags: `@smoke`, `@regression`, `@direct-access` e `@navigation`.
- Validação de acesso direto a páginas, URL e título principal.
- Verificação de navegação após atualização da página.
- Execução em modo headless, interativo e pelo GitHub Actions.
- Geração de relatório Cucumber e evidências do Cypress.

## Tecnologias

- JavaScript
- Node.js e npm
- Cypress 14
- Cucumber e Gherkin
- BDD
- GitHub Actions

## Pré-requisitos

- Node.js 20 ou superior.
- npm.
- Git.

## Instalação

Clone o repositório e instale as dependências:

```bash
git clone https://github.com/priottomarcos7-coder/cucumber-cypress-exemplo.git
cd cucumber-cypress-exemplo
npm install
```

## Execução dos testes

| Comando | Finalidade |
|---|---|
| `npm test` | Executa todos os cenários em modo headless |
| `npm run test:smoke` | Executa os cenários marcados com `@smoke` |
| `npm run test:regression` | Executa os cenários marcados com `@regression` |
| `npm run test:open` | Abre a interface do Cypress |

## Cenários automatizados

Os testes estão em `cypress/e2e/teste.feature` e cobrem quatro situações:

| Cenário | Cobertura |
|---|---|
| Acessar a introdução da documentação | Acesso direto, URL e título principal visível |
| Acessar a referência da API | Acesso direto, URL e conteúdo do título |
| Acessar as perguntas frequentes | Acesso direto, URL e conteúdo do título |
| Atualizar a página de documentação | Persistência do acesso após reload |

As validações de título são adequadas ao conteúdo de cada página. Na introdução, o teste verifica a visibilidade de um título principal não vazio; nas páginas de API e FAQ, também confere o texto esperado.

## Estrutura do projeto

```text
cypress/
├── e2e/
│   └── teste.feature
├── fixtures/
│   └── example.json
└── support/
    ├── commands.js
    ├── e2e.js
    └── step_definitions/
        └── teste.steps.js
.github/
└── workflows/
    └── e2e.yml
cypress.config.js
package.json
```

## Integração contínua

O workflow do GitHub Actions instala as dependências com `npm ci` e executa a suíte Cypress em pushes, Pull Requests direcionados às branches principais e execuções manuais.

Os relatórios Cucumber, screenshots e vídeos são enviados como artefatos da execução, quando disponíveis, para apoiar a análise dos resultados.

## Evidências e limitações

A aplicação sob teste é um site público externo. Mudanças em suas páginas, conteúdo ou estrutura podem exigir ajustes nos seletores e nas expectativas dos cenários. Portanto, os resultados representam a execução desta suíte nos fluxos cobertos, e não uma avaliação completa do site.

O status das execuções pode ser consultado na aba **Actions** do repositório.

## Repositório

[ cypress-cucumber-exemplo no GitHub ](https://github.com/priottomarcos7-coder/cucumber-cypress-exemplo)

---

# English Version

## E2E Automation with Cypress, Cucumber and BDD

End-to-end test automation project developed as part of a Software Quality Engineering learning portfolio. The public [Cucumber website](https://cucumber.io/) is used as the system under test.

### Project highlights

- BDD scenarios written in Gherkin.
- Cypress and Cucumber integration.
- Reusable step definitions.
- Scenario organization with tags.
- Direct page access, URL, heading and reload checks.
- Headless and interactive execution.
- GitHub Actions continuous integration.
- Cucumber reports and Cypress execution evidence.

### Installation

```bash
git clone https://github.com/priottomarcos7-coder/cucumber-cypress-exemplo.git
cd cucumber-cypress-exemplo
npm install
```

### Test commands

```bash
npm test
npm run test:smoke
npm run test:regression
npm run test:open
```

### Notes

The test suite depends on the public Cucumber website. Changes to its content or structure may require updates to selectors and assertions. Workflow results and available execution artifacts can be checked in the repository's **Actions** tab.

---

Projeto desenvolvido por **Marcos Priotto** como prática de automação de testes.
