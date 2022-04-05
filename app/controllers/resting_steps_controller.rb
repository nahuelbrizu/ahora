class RestingStepsController < ActionController::Base
  def index
    @resting_steps = RestingStep.all
    render json: @resting_steps
  end
  def show
    @resting_step = RestingStep.find(params[:id])
    render json: @resting_step
  end

  def create
    @resting_step = RestingStep.create!(resting_step_params)
    #  @RestingStep.save
    render json: @resting_step
  end
  def update
    @resting_step = RestingStep.find(params[:id])
    if @resting_step.update_attributes(resting_step_params)
      flash[:notice] = 'resting Step updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit resting Step!'
      render :edit, :json
    end
  end
  def resting_step_params
    params.require(:resting_step).permit( :restingStep, :steps_id, :step_id)
  end
end




