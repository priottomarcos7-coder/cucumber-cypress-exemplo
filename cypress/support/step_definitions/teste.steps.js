const {
  Given,
  When,
  Then,
} = require('@badeball/cypress-cucumber-preprocessor');

Given('que acesso a página inicial do Cucumber.io', () => {
  cy.visit('/');
});

When('clico no link {string}', (nomeDoLink) => {
  cy.contains('a', nomeDoLink).should('be.visible').click();
});

When('retorno para a página anterior', () => {
  cy.go('back');
});

When('atualizo a página', () => {
  cy.reload();
});

When('acesso diretamente o caminho {string}', (caminho) => {
  cy.visit(caminho);
});

When('acesso a documentação com resolução mobile', () => {
  cy.viewport(390, 844);
  cy.visit('/docs/cucumber/');
});

When('acesso a documentação com resolução desktop', () => {
  cy.viewport(1366, 768);
  cy.visit('/docs/cucumber/');
});

Then('a URL deve conter {string}', (caminho) => {
  cy.location('pathname').should('eq', caminho);
});

Then('o título principal deve apresentar {string}', (titulo) => {
  cy.get('h1').should('be.visible').and('contain', titulo);
});

Then('o título principal deve estar visível', () => {
  cy.get('h1').should('be.visible').and(($h1) => {
    expect($h1.text().trim()).not.to.equal('');
  });
});

Then('devo estar na página inicial do Cucumber.io', () => {
  cy.location('pathname').should('eq', '/');
});
