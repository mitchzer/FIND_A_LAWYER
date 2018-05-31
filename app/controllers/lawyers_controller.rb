class LawyersController < ApplicationController
  def index
    if params[:term]
      @lawyers = policy_scope(Lawyer).search_by_specialties_and_address(params[:term])
    else
      # @lawyers = Lawyer.all
    @lawyers = policy_scope(Lawyer)
    end
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
    params.require(:lawyer).permit(:specialty_id, :first_name, :address, :qualification, :professional_email, :user_id)
  end
end
