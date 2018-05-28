class AppointmentsController < ApplicationController
  def index
      @appointments = Appointment.all
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
    @appointment.lawyer = @lawyer.find(params[:lawyer_id])
    @appointment.save
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
