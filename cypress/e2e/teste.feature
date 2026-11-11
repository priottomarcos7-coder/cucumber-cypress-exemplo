# language: pt

Funcionalidade: Navegação no site Cucumber.io
  Como uma pessoa que está aprendendo sobre BDD
  Quero navegar pelas principais seções do Cucumber
  Para acessar conteúdos e documentação da ferramenta

  Background:
    Dado que acesso a página inicial do Cucumber.io

  @smoke @navigation
  Esquema do Cenário: Acessar uma seção principal pelo menu
    Quando clico no link "<secao>"
    Então a URL deve conter "<caminho>"
    E o título principal deve apresentar "<titulo>"

    Exemplos:
      | secao         | caminho | titulo                  |
      | Documentation | /docs   | Introduction            |
      | Learn         | /learn  | Learn BDD and Cucumber  |

  @regression @navigation
  Cenário: Retornar à página inicial usando o navegador
    Quando clico no link "Documentation"
    E retorno para a página anterior
    Então devo estar na página inicial do Cucumber.io

  @regression @navigation
  Cenário: Manter a seção correta após atualizar a página
    Quando clico no link "Learn"
    E atualizo a página
    Então a URL deve conter "/learn"
    E o título principal deve apresentar "Learn BDD and Cucumber"

  @regression @direct-access
  Cenário: Acessar diretamente a documentação
    Quando acesso diretamente o caminho "/docs"
    Então a URL deve conter "/docs"
    E o título principal deve apresentar "Introduction"
