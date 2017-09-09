# language: pt
Funcionalidade: Busca na Wikipedia
  Vamos buscar na Wikipedia por Ada Lovelace
  e precisamos ver se retorna isto mesmo.

  Cenário: Busca por Ada Lovelace
    Dado vou para "http://pt.wikipedia.org"
    E preencho "search" com "Ada Lovelace"
    E pressiono "go"
    Então espero o texto "primeira programadora" aparecer
