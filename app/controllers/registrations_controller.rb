# app/controllers/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController
 def create
   super

   if params[:lawyer]
     redirect_to new_lawyer_path
   end
 end
end



