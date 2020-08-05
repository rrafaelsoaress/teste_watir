require 'watir'
include Helpers

class SobreNosPage
  def initialize(browser)
    @browser = browser
    @nome =       @browser.input(name: 'name')
    @email =      @browser.input(name: 'email')
    @telefone =   @browser.input(name: 'telephone')
    @interesse =  @browser.select(name: 'interest')
    @assunto =    @browser.input(name: 'subject')
    @mensagem =   @browser.textarea(name: 'message')
    @btn_enviar = @browser.button(type: 'submit')
    @msg_ok =     @browser.div(class: 'contact__form--success')
    @msg_nok =    @browser.div(class: ['contact__form--error', 'invalid-fields'])
  end

  def enviar_msg_ok(nome, email, telefone, interesse, assunto, mensagem)
    @nome.send_keys nome
    @email.send_keys email
    @telefone.send_keys telefone
    @interesse.select interesse
    @assunto.send_keys assunto
    @mensagem.send_keys mensagem
    @btn_enviar.click
  end

  def enviar_msg_nok
    @nome.send_keys(Faker::Name.first_name)
    @email.send_keys(Faker::Internet.email)
    @telefone.send_keys(Faker::PhoneNumber.phone_number)
    @btn_enviar.wait_until(&:present?).click
  end

  def validacao_msg
    @msg_nok.present? && @msg_nok.text || @msg_ok.text
  end
end
