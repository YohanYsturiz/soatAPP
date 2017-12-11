class Welcome < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.welcome.notify.subject
  #
  def notify
    mail to: 'yohanysturiz@gmail.com', subject: 'Bienvenido!'
  end
end
