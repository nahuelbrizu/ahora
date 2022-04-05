class PresentingStepsController < ActionController::Base
  def index
    @presenting_steps = PresentingStep.all
    render json: @presenting_steps
  end

  def create
    @presenting_step = PresentingStep.create!(presenting_step_params)
    render json: @presenting_step
  end

  def update
    @presenting_step = PresentingStep.find(params[:id])
    if @presenting_step.update_attributes(presenting_step_params)
      flash[:notice] = 'presenting_step updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit presenting_step!'
      render :edit, :json
    end
  end

  def destroy
    @presenting_step = PresentingStep.find(params[:id])
    if @presenting_step.delete
      flash[:notice] = 'presenting_step deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to delete this presenting_step!'
      render :destroy
    end
  end

  def presenting_step_params
    params.require(:presenting_step).permit( :steps_id, :step_id)
  end


end

