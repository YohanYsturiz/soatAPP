# Preview all emails at http://localhost:3000/rails/mailers/welcome
class WelcomePreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/welcome/notify
  def notify
    Welcome.notify(Person.new(name: 'Usuario Ejemplo', email: 'usuarioejemplo@mail.com'))
  end

end
