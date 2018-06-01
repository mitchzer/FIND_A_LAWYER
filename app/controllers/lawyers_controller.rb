class LawyersController < ApplicationController

  def index
    if params[:term]
      @lawyers = policy_scope(Lawyer).search_by_specialties_and_address(params[:term])
    else
      # @lawyers = Lawyer.all
    @lawyers = policy_scope(Lawyer)
    end

    @lawyer_markers = @lawyers.where.not(latitude: nil, longitude: nil)

    @mapping = @lawyer_markers.map do |lawyer|
      {
        lat: lawyer.latitude,
        lng: lawyer.longitude
      }

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
    @lawyer.professional_email = current_user.email
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
    if @lawyer.save
      redirect_to lawyer_path
    else
      render :edit
    end
  end

  def destroy
    @lawyer = Lawyer.find(params[:id])
    if @lawyer.appointments.empty?
      @lawyer.destroy
      redirect_to lawyers_path
    else
      render :file => 'public/DELETING_ERROR.html', :status => :not_found, :layout => false
     end
  end

  private

  def lawyer_params
    params.require(:lawyer).permit(:specialty_id, :title, :body, :photo, :first_name, :address, :qualification, :professional_email, :user_id)
  end
end
