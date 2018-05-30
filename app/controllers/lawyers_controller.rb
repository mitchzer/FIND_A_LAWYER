class LawyersController < ApplicationController
  def index
    @lawyers = policy_scope(Lawyer)
  end

  def show
    @lawyer = Lawyer.find(params[:id])
    authorize @lawyer
  end

  def new
    @lawyer = Lawyer.new
    authorize @lawyer
  end

  def edit
    @lawyer = Lawyer.find(params[:id])
    authorize @lawyer
  end

  def create
    @lawyer = Lawyer.new(lawyer_params)
    @lawyer.user = current_user
    authorize @lawyer
    if @lawyer.save
      redirect_to lawyers_path
    else
      render :new
    end
  end

  def update
    @lawyer = Lawyer.find(params[:id])
    @lawyer.update(lawyer_params)
    authorize @lawyer
  end

  def delete
    authorize @lawyer
  end

  private

  def lawyer_params
    params.require(:lawyer).permit(:specialties, :country, :city, :address, :price_per_hour, :bar, :languages, :qualification, :professional_email, :professional_phone_number, :description, :user_id)
  end
end
