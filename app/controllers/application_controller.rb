class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  layout :set_layout
  
  def set_layout
    "landing"
  end
  

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

      def configure_permitted_parameters
          devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:nombre, :apellido, :cedula, :telefono, :email, :password) }
          devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:nombre, :apellido, :cedula, :telefono, :email, :password, :current_password) }
      end
  
end
