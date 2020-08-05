#language: pt

@sobre_nos
Funcionalidade: Sobre Nós
    Eu como usuario da PicPay gostaria de acessar a pagina Sobre Nós para conhecer mais a empresa

  Contexto: Acessando a pagina Sobre Nós
    Dado que eu esteja no site da PicPay
    Quando eu clicar em 'Sobre Nós'

@acessar_pagina
  Cenario: Acessar a pagina Sobre Nós
    Então devo ser direcionado para pagina Sobre Nós

@validar_secoes
  Cenario: Validação das seções
    Então deve ser apresentada todas as seções

@enviar_msg_ok
  Esquema do Cenario: Enviando mensagem
      E eu clicar em 'Contato'
      E preencher os dados "<nome>", "<email>", "<telefone>", "<interesse>", "<assunto>" e "<mensagem>"
    Então deve apresentar a mensagem 'Mensagem Enviada! Obrigado pelo contato. O PicPay responderá a sua mensagem o mais breve possível.'

    Exemplos:
    | nome    | email           | telefone   | interesse | assunto | mensagem |
    | Teste 1 | teste@teste.com | 1128644251 | Eventos   | Duvida  | Teste    |

@enviar_msg_nok
  Cenario: Enviando mensagem faltando dados
      E eu clicar em 'Contato'
      E preencher os dados errados
    Então deve apresentar a mensagem 'Ops, ocorreu algum erro. Campo incorreto ou inválido.'