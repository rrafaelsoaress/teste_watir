#language: pt

@central_doacoes
Funcionalidade: Central de Doações
    Eu como usuario da PicPay gostaria de acessar a pagina Central de Doações para conhecer o projeto

@acessar_pagina
  Cenario: Acessar a pagina Central de Doações
    Dado que eu esteja no site da PicPay
    Quando eu clicar em 'Central de Doações'
    Então devo ser direcionado para pagina correta
