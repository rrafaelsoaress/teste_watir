require 'watir'
include Helpers

class HomePage
  def initialize(browser)
    @browser = browser
  end

  def acessar_site
    @browser.goto URL[ENVIRONMENT]
  end

  def clicar_botao(texto_botao)
    buscar_elemento_por_texto(texto_botao).click
  end
end
