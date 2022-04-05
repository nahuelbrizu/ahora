class RelatedRecipesController < ActionController::Base
  def index
    @related_recipes = RelatedRecipe.all
    render json: @related_recipes
  end
  def show
    @related_recipe = RelatedRecipe.find(params[:id])
    render json: @related_recipe
  end

  def create
    @related_recipe = RelatedRecipe.create!(related_recipe_params)
    #  @related_recipe.save
    render json: @related_recipe
  end
  def update
    @related_recipe = RelatedRecipe.find(params[:id])
    if @related_recipe.update_attributes(related_recipe_params)
      flash[:notice] = 'related recipe updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit related recipe!'
      render :edit, :json
    end
  end
  def related_recipe_params
    params.require([:related_recipe]).permit([:related_id][:recipe_id])
  end
end


