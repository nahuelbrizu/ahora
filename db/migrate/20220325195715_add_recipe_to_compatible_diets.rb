class AddRecipeToCompatibleDiets < ActiveRecord::Migration[7.0]
  def change
      add_reference :compatible_diets, :recipe, null: false, foreign_key: true

  end
end
