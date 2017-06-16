class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout Proc.new { |controller| controller.devise_controller? ? 'form_layout' : 'application' }
  
  layout "form_layout", except: [:welcome]

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |user_params|
      user_params.permit(:email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.permit(:account_update) do |user_params| 
      user_params.permit(:password, :password_confirmation)
    end
    
  end
end
