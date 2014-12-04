# language: pt
Funcionalidade: Busca na Wikipedia
  Vamos buscar na Wikipedia por Ada Lovelace
  e precisamos ver se retorna isto mesmo.
  @javascript
  Cenário: Busca por Ada Lovelace
    Dado estou na página de entrada
    E preencho "search" com "Ada Lovelace"
    E pressiono "go"
    E devo ver "Ada Augusta Byron King"
    E Eu devo aguardar 5 segundos ou pelo javascript "false"
