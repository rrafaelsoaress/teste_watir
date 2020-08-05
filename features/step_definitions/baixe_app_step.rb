Dado('que eu esteja no site da PicPay') do
  @page.(HomePage).acessar_site
end

Quando('eu clicar em {string}') do |botao|
  @page.(HomePage).clicar_botao(botao)
end

Então('devo ser direcinado para pagina das lojas') do
  expect(@browser.title).to eq 'Baixe agora o PicPay'
end

Dado('que eu esteja na pagina das lojas') do
  steps %{
    Dado que eu esteja no site da PicPay
    Quando clicar em 'Baixe o app'
  }
end

Quando('eu clicar no em {string}') do |loja|
  @page.(HomePage).clicar_botao(loja)
end

Então('devo ser direcionado para a Play Store') do
  expect(@browser.url).to eq 'https://play.google.com/store/apps/details?id=com.picpay'
end

Então('devo ser direcionado para a App Store') do
  expect(@browser.url).to eq 'https://apps.apple.com/br/app/id561524792'
end
