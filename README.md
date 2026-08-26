# Automação Web Avançada — Cypress com Cucumber

## Objetivo

Projeto de automação de testes de interface utilizando Cypress integrado ao Cucumber, desenvolvido durante a formação em Engenharia de Qualidade de Software.

Neste projeto desenvolvi cenários de teste utilizando BDD para organizar o comportamento esperado da aplicação de forma mais próxima da linguagem do negócio.

## O que desenvolvi

- Automação E2E com Cypress.
- Organização de cenários utilizando Cucumber e BDD.
- Execução dos cenários em modo gráfico e headless.
- Execução de cenários utilizando tags.
- Estruturação dos testes para facilitar leitura e manutenção.

## Tecnologias

- Cypress
- Cucumber
- BDD
- JavaScript
- Node.js

## Pré-requisitos

- Node.js 14 ou superior.
- npm ou yarn.
- Git.

## Instalação

```bash
git clone https://github.com/priottomarcos7-coder/cucumber-cypress-exemplo.git
cd cucumber-cypress-exemplo
npm install
```

## Execução dos testes

Modo headless:

```bash
npx cypress run
```

Modo interativo:

```bash
npx cypress open
```

Execução por tag:

```bash
npx cypress run --env tags='@learn'
```

## Estratégia de testes

O uso de BDD permite descrever cenários com foco no comportamento esperado. O Cucumber organiza os cenários e o Cypress realiza a automação das interações e validações.

## Resultado esperado

Os cenários devem ser executados pelo Cypress e apresentar o resultado de cada caso, permitindo identificar comportamentos aprovados e falhas.

## Repositório

https://github.com/priottomarcos7-coder/cucumber-cypress-exemplo

## Autor

Marcos Priotto

Projeto desenvolvido como parte da formação em Engenharia de Qualidade de Software na EBAC.