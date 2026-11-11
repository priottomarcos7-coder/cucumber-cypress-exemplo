# Automação Web com Cypress, Cucumber e BDD

Projeto de automação de testes E2E desenvolvido durante a formação em Engenharia de Qualidade de Software. A aplicação sob teste é o site público do [Cucumber](https://cucumber.io/).

O objetivo é praticar a escrita de cenários em Gherkin, a implementação de step definitions reutilizáveis e a execução de testes automatizados com Cypress.

## O que o projeto demonstra

- BDD com cenários escritos em Gherkin.
- Integração do Cucumber com Cypress.
- Cenários orientados a exemplos com **Scenario Outline**.
- Reutilização de passos nas Step Definitions.
- Organização por tags: `@smoke`, `@regression`, `@navigation` e outras.
- Testes de navegação, URL, conteúdo, atualização e retorno de página.
- Execução local em modo headless ou interativo.
- Evidências de falha com screenshots e vídeos do Cypress.
- Pipeline de execução automatizada com GitHub Actions.

## Tecnologias

- JavaScript
- Node.js e npm
- Cypress 14
- Cucumber
- Gherkin
- BDD
- GitHub Actions

## Pré-requisitos

- Node.js 20 ou superior.
- npm.
- Git.

## Instalação

```bash
git clone https://github.com/priottomarcos7-coder/cucumber-cypress-exemplo.git
cd cucumber-cypress-exemplo
npm install
```

## Execução dos testes

Executar todos os cenários:

```bash
npm test
```

Executar somente os cenários smoke:

```bash
npm run test:smoke
```

Executar os cenários de regressão:

```bash
npm run test:regression
```

Abrir a interface do Cypress:

```bash
npm run test:open
```

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

## Estratégia de testes

Os cenários cobrem os principais fluxos de navegação do site Cucumber.io:

| Cenário | Tipo |
|---|---|
| Acessar Documentation e Learn | Smoke / navegação |
| Retornar à página inicial | Regressão |
| Atualizar a página Learn | Regressão |
| Acessar Documentation diretamente | Regressão |

Os cenários utilizam exemplos para validar diferentes seções com a mesma estrutura de passos. As validações verificam URL e conteúdo visível, evitando considerar apenas o clique como evidência de sucesso.

## Integração contínua

O GitHub Actions executa os testes em pushes e Pull Requests direcionados à branch principal. Os artefatos de execução são publicados mesmo quando os testes falham, para facilitar a análise.

## Evidências e limitações

O projeto depende da disponibilidade e da estrutura do site público cucumber.io. Alterações no conteúdo, nos links ou no layout do site podem exigir atualização dos seletores e das expectativas. A suíte valida os fluxos definidos neste repositório; não representa uma certificação ou avaliação completa do site.

Os relatórios, screenshots e vídeos são gerados durante a execução. O resultado real da pipeline pode ser consultado na aba **Actions** do GitHub.

## Repositório

https://github.com/priottomarcos7-coder/cucumber-cypress-exemplo

---

# English Version

## Cypress, Cucumber and BDD Web Automation

End-to-end test automation project developed as part of a Software Quality Engineering course. The application under test is the public [Cucumber website](https://cucumber.io/).

### Project highlights

- BDD scenarios written in Gherkin.
- Cypress integration with Cucumber.
- Scenario Outline and reusable step definitions.
- Test organization using tags.
- Navigation, URL, page content, reload and browser history checks.
- Headless and interactive execution.
- Cypress screenshots and videos on test failures.
- GitHub Actions workflow for continuous integration.

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

The tests depend on the public Cucumber website. Changes to its pages or navigation may require updates to selectors and assertions. Execution reports and evidence are generated when the tests run.

---

Projeto desenvolvido por **Marcos Priotto** como prática de automação de testes.
