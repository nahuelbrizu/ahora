class RecipesController < ActionController::Base
  def index
    @recipes = Recipe.all
    render json: @recipes
  end
  def show
    @recipe = Recipe.find(params[:id])
    render json: @recipe
  end

  def create
    @recipe = Recipe.create!(recipe_params)
    #  @recipe.save
    render json: @recipe
  end

  def recipe_params
    params.require(:recipe).permit(:servings, :country, :cuisine, :calories, :author_id)
  end

end
