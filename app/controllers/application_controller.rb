class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
 
    def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up)  {|u| u.permit(:first_name, :last_name, :username, :birthdate, :email, :password, :password_confirmation)}
     devise_parameter_sanitizer.permit(:sign_in)  {|u| u.permit(:email, :password, :password_confirmation)}
     devise_parameter_sanitizer.permit(:account_update)  {|u| u.permit(:first_name, :last_name, :username, :about, :birthdate, :email, :password, :password_confirmation)}
    end
end
