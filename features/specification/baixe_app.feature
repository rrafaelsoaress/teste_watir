#language: pt

@baixe_app
Funcionalidade: Baixar App
    Eu como usuario da PicPay gostaria de acessar a pagina de downloads para poder baixar e utilizar o app

@validar_botoes
  Cenario: Validar botões "Baixe o app"
    Dado que eu esteja no site da PicPay
    Quando eu clicar em 'Baixe o app'
    Então devo ser direcinado para pagina das lojas

@validar_android
  Cenario: Validar o link do Android
    Dado que eu esteja na pagina das lojas
    Quando eu clicar no em 'Android'
    Então devo ser direcionado para a Play Store

@validar_ios
  Cenario: Validar o link do Iphone
    Dado que eu esteja na pagina das lojas
    Quando eu clicar no em 'iPhone'
    Então devo ser direcionado para a App Store