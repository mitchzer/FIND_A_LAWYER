# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
  protected

  def after_inactive_sign_up_path_for(user)
    if user.lawyer?
      redirect_to new_lawyer_path
    end
  end
end



