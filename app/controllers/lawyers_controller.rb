class LawyersController < ApplicationController
  def index
    @lawyers = Lawyer.all
  end

  def show
    @lawyer = Lawyer.find(:id)
  end

  def new
    @lawyer = Lawyer.new
  end

  def edit
    @lawyer = Lawyer.find(params[:id])
  end

  def create
    @lawyer = Lawyer.new(lawyer_params)
    @lawyer.save
  end

  def update
    @lawyer = Lawyer.find(params[:id])
    @lawyer.update(lawyer_params)
  end

  def delete
  end

  private

  def lawyer_params
    params.require(:lawyer).permit(:specialties, :country, :city, :address, :price_per_hour, :bar, :languages, :qualification, :professional_email, :professional_phone_number, :description)
  end
end
