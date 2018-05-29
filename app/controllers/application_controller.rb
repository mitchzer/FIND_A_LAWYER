class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!, except: :devise_controller?

  include Pundit

  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :personal_email, :lawyer])
    # to be able to go from sign in user form to lawyer user form
    # but does not work
    # devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:specialties, :country, :city, :address, :price_per_hour, :bar, :languages, :qualification, :professional_email, :professional_phone_number, :description, :user_id) }

  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

end
