class IngredientsController < ::ActionController::Base
  def index
    @ingredients = Ingredient.all
    render json: @ingredients
  end
  def show
    @ingredient = Ingredient.find(params[:id])
    render json: @ingredient
  end

  def create
    @ingredient = Ingredient.create!(ingredient_params)
    #@ingredient.save
    render json: @ingredient
  end

  def ingredient_params
    params.require(:ingredient).permit(:ingredientsNeeded, :recipe_id, :step_id)
  end

end


