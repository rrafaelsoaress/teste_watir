module Helpers
  def buscar_elemento_por_texto(texto)
    @browser.element(visible_text: texto)
  end
end
