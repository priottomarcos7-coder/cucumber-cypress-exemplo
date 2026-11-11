# language: pt

Funcionalidade: Acesso à documentação do Cucumber
  Como uma pessoa que está aprendendo sobre BDD
  Quero acessar as páginas públicas do Cucumber
  Para consultar conceitos, referências e orientações da ferramenta

  @smoke @direct-access
  Cenário: Acessar a introdução da documentação
    Quando acesso diretamente o caminho "/docs/cucumber/"
    Então a URL deve conter "/docs/cucumber/"
    E o título principal deve estar visível

  @regression @direct-access
  Cenário: Acessar a referência da API do Cucumber
    Quando acesso diretamente o caminho "/docs/cucumber/api/"
    Então a URL deve conter "/docs/cucumber/api/"
    E o título principal deve apresentar "Cucumber reference"

  @regression @direct-access
  Cenário: Acessar as perguntas frequentes
    Quando acesso diretamente o caminho "/docs/faq/"
    Então a URL deve conter "/docs/faq/"
    E o título principal deve apresentar "FAQs"

  @regression @navigation
  Cenário: Manter a documentação acessível após atualizar a página
    Quando acesso diretamente o caminho "/docs/cucumber/"
    E atualizo a página
    Então a URL deve conter "/docs/cucumber/"
    E o título principal deve estar visível

  @regression @responsive @mobile
  Cenário: Exibir a documentação em uma resolução mobile
    Quando acesso a documentação com resolução mobile
    Então a URL deve conter "/docs/cucumber/"
    E o título principal deve estar visível
    E a página não deve apresentar rolagem horizontal

  @regression @responsive @desktop
  Cenário: Exibir a documentação em uma resolução desktop
    Quando acesso a documentação com resolução desktop
    Então a URL deve conter "/docs/cucumber/"
    E o título principal deve estar visível
    E a página não deve apresentar rolagem horizontal
