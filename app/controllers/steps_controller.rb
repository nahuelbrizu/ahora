class StepsController < ActionController::Base
  def index
    @steps = Step.all
    render json: @steps
  end

  def create
    @step = Step.create!(step_params)
    render json: @step
  end

  def update
    @step = Step.find(params[:id])
    if @step.update_attributes(step_params)
      flash[:notice] = 'step updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit step!'
      render :edit, :json
    end
  end

  def destroy
    @step = Step.find(params[:id])
    if @step.delete
      flash[:notice] = 'step deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to delete this step!'
      render :destroy
    end
  end

  def step_params
    params.require(:step).permit(:Starting_time, :estimated_time, :recipe_id)
  end


end
