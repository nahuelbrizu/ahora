class CompatibleDietsController < ActionController::Base
  def index
    @compatible_diets = CompatibleDiet.all
    render json: @compatible_diets
  end
  def show
    @compatible_diet = CompatibleDiet.find(params[:id])
    render json: @compatible_diet
  end

  def create
    @compatible_diet = CompatibleDiet.create!(compatible_diet_params)
    #  @compatible_diet.save
    render json: @compatible_diet
  end
  def update
    @compatible_diet = CompatibleDiet.find(params[:id])
    if @compatible_diet.update_attributes(compatible_diet_params)
      flash[:notice] = 'compatible_diet updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit compatible_diet!'
      render :edit, :json
    end
  end
  def compatible_diet_params
    params.require(:compatible_diet).permit(:related_id ,:recipe_id)
  end
end



