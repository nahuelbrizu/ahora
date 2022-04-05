class IntegrationStepsController < ActionController::Base
  def index
    @integration_steps = IntegrationStep.all
    render json: @integration_steps
  end

  def create
    @integration_step = IntegrationStep.create!(integration_step_params)
    render json: @integration_step
  end

  def update
    @integration_step = IntegrationStep.find(params[:id])
    if @integration_step.update_attributes(integration_step_params)
      flash[:notice] = 'integration_step updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit integration_step!'
      render :edit, :json
    end
  end

  def destroy
    @integration_step = IntegrationStep.find(params[:id])
    if @integration_step.delete
      flash[:notice] = 'integration_step deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to delete this integration_step!'
      render :destroy
    end
  end

  def integration_step_params
    params.require(:integration_step).permit( :steps_id, :step_id)
  end


end

