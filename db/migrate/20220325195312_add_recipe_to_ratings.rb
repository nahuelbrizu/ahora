class AddRecipeToRatings < ActiveRecord::Migration[7.0]
  def change
     add_reference :ratings, :recipe, null: false, foreign_key: true
  end
end
