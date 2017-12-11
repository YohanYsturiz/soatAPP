class UserController < ApplicationController
    
  before_action :authenticate_user!
    
    @person = Person.new(name: params[:nombre], email: params[:email])

    def sign_up_params
        Welcome.notify(@person).deliver_now
        
        params.require(:user).permit(:nombre, :apellido, :email, :password, :password_confirmation)
    end
    
    def account_update_params
        params.require(:user).permit(:nombre, :apellido, :email, :password, :password_confirmation, :current_password)
    end
    
end
