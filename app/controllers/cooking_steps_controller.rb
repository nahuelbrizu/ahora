class CookingStepsController < ActionController::Base
  def index
    @cooking_steps = CookingStep.all
    render json: @cooking_steps
  end
  def show
    @cooking_step = CookingStep.find(params[:id])
    render json: @cooking_step
  end

  def create
    @cooking_step = CookingStep.create!(cooking_step_params)
    #  @Cooking_step.save
    render json: @cooking_step
  end
  def update
    @cooking_step = CookingStep.find(params[:id])
    if @cooking_step.update_attributes(cooking_step_params)
      flash[:notice] = 'Cooking_step updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit Cooking_step!'
      render :edit, :json
    end
  end
  def cooking_step_params
    params.require(:cooking_step).permit( :cookingStep, :steps_id, :step_id)
  end
end



