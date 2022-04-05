class AddIngredientToSteps < ActiveRecord::Migration[7.0]
  def change
    add_reference :ingredients, :step

  end
end
