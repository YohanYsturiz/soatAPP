class Welcome < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome.notify.subject
  #
  def notify(email_user,datos_coche,descripcion_poliza)
    @datos_coche = datos_coche
    @descripcion_poliza = descripcion_poliza
    mail to: email_user, subject: 'Poliza soat Adquirida, Gracias!'
  end
end
