class CustomStepsController < ActionController::Base
  def index
    @custom_steps = CustomStep.all
    render json: @custom_steps
  end
  def show
    @custom_step = CustomStep.find(params[:id])
    render json: @custom_step
  end

  def create
    @custom_step = CustomStep.create!(custom_step_params)
    #  @customStep.save
    render json: @custom_step
  end
  def update
    @custom_step = CustomStep.find(params[:id])
    if @custom_step.update_attributes(custom_step_params)
      flash[:notice] = 'Custom Step updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit Custom Step!'
      render :edit, :json
    end
  end
  def custom_step_params
    params.require(:custom_step).permit( :customStep, :steps_id, :step_id)
  end
end



