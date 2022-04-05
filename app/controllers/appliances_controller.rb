class AppliancesController < ActionController::Base
  def index
    @appliances = Appliance.all
    render json: @appliances
  end
  def show
    @appliance = Appliance.find(params[:id])
    render json: @appliance
  end

  def create
    @appliance = Appliance.create!(appliance_params)
    #  @Appliance.save
    render json: @appliance
  end
  def update
    @appliance = Appliance.find(params[:id])
    if @appliance.update_attributes(appliance_params)
      flash[:notice] = 'Appliance updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit Appliance!'
      render :edit, :json
    end
  end
  def appliance_params
    params.require(:appliance).permit(:appliance, :recipe_id, :step_id)
  end
end


