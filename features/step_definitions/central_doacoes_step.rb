Então('devo ser direcionado para pagina correta') do
  @browser.windows[1].use
  expect(@browser.url).to eq 'https://centraldedoacoes.picpay.com/'
end
