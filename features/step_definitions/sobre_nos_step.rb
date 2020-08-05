Então('devo ser direcionado para pagina Sobre Nós') do
  expect(@browser.url).to eq 'https://picpay.com/site/sobre-nos'
end

Dado('que eu esteja na pagina Sobre Nós') do
  steps %{
    Dado que eu esteja no site da PicPay
    Quando eu clicar em 'Sobre Nós'
  }
end

Então('deve ser apresentada todas as seções') do
  @browser.section(class: 'about-slider').present?
  @browser.section(class: 'press').present?
  @browser.section(class: 'contact').present?
end

Quando('preencher os dados {string}, {string}, {string}, {string}, {string} e {string}') do |nome, email, telefone, interesse, assunto, mensagem|
  @page.(SobreNosPage).enviar_msg_ok(nome, email, telefone, interesse, assunto, mensagem)
end

Então('deve apresentar a mensagem {string}') do |mensagem|
  @mensagem = @page.(SobreNosPage).validacao_msg
  @mensagem = @mensagem.gsub("\n", ' ')
  expect(@mensagem).to eq mensagem
end

Quando('preencher os dados errados') do
  @page.(SobreNosPage).enviar_msg_nok
end
