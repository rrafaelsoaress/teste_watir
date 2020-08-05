# Projeto

Desenvolvimento de um projeto de automação com tema livre.

Escolhi efetuar algumas validações no site da PicPay, testes de front-end com o framework [Watir](http://watir.com/) em linguagem [Ruby](https://www.ruby-lang.org/pt/about/)

## Índice

- [O que foi feito?](#o-que-foi-feito)
- [Instalação](#instalação)
- [Cenários criados](#cenários-criados)
- [Testes](#testes)

## O que foi feito?
Procurei utilizar as boas práticas para automação, o projeto possui a gem rubocup para análise e melhoria do código, utilizei a gem faker para criar dados aleatórios e também a gem rake para criar tarefas de testes.
Utilizei PageObject para o mapeamento dos elementos e para criação de métodos que facilitam o desenvolvimento dos steps. Utilizei o Rspec para validações e também fiz validações com o próprio Watir.

## Instalação

1- Utilizei o Ruby na versão 2.5.7

Para instalar recomendo o rbenv para gerenciar as versões
[Instação Rbenv/Ruby](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04-pt)

2- Clonar o projeto do Github
```
git clone git@github.com:rrafaelsoaress/teste_watir.git
```
3- Na pasta do projeto executar o bundle
```
bundle install
```
## Cenários criados
1- Validar o redirecionamento do botão Baixe o app que está no header do site e validar se os botões da lojá estão direcionando para as lojas corretas.

2- Validar o redirecionamento do botão Central de Doações

3- Validar o redirecionamento do botão SObre Nós, alem de garantir que as seções dos botões estão presentes e por fim enviar uma mensagem em contatos com e sem todos os dados obrigatórios.


## Testes
Todos os testes foram criados com tags: 

- Para rodar todos os testes
```
cucumber
```

- Para rodar um testes especifico:

```
cucumber -t @tag
```

Também foi criada rakes das funcionalidades, o codigo abaixo ira rodar os testes correspondentes a sua funcionalidade.
```
rake baixe_app
rake central_doacoes
rake sobre_nos
```