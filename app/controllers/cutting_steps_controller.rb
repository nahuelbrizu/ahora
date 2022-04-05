class CuttingStepsController < ActionController::Base
  def index
    @cutting_steps = CuttingStep.all
    render json: @cutting_steps
  end
  def show
    @cutting_step = CuttingStep.find(params[:id])
    render json: @cutting_step
  end

  def create
    @cutting_step = CuttingStep.create!(cutting_step_params)
    #  @cutting_step.save
    render json: @cutting_step
  end
  def update
    @cutting_step = CuttingStep.find(params[:id])
    if @cutting_step.update_attributes(cutting_step_params)
      flash[:notice] = 'cutting_step updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit cutting_step!'
      render :edit, :json
    end
  end
  def cutting_step_params
    params.require(:cutting_step).permit( :cuttingStep, :steps_id, :step_id)
  end
end


