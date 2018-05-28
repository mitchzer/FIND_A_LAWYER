class ApplicationController < ActionController::Base
  protect_from_forgery
  # before_action :authenticate_user!

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :personal_email])
  end

end
