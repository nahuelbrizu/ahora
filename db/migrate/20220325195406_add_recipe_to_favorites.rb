class AddRecipeToFavorites < ActiveRecord::Migration[7.0]
  def change
      add_reference :favorites, :recipe, null: false, foreign_key: true
  end
end
