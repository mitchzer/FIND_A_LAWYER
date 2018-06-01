class AppointmentsController < ApplicationController
  # skip_before_action :authenticate_user!
  def index
      @appointment = Appointment.find(params[:lawyer_id])


  end

  def show
  end

  def new
    @lawyer = Lawyer.find(params[:lawyer_id])
    @user = current_user
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @lawyer = Lawyer.find(params[:lawyer_id])
    @appointment.lawyer = @lawyer
    @appointment.user = current_user
    # authorize @appointment
    if @appointment.save
      redirect_to  lawyer_appointments_path(@appointment)
      # redirect_to lawyer_appointments_path(params[:lawyer_id])
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time, :description)
  end
end
