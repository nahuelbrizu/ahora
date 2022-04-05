class AddRecipeToLike < ActiveRecord::Migration[7.0]
  def change
      add_reference :likes, :recipe, null: false, foreign_key: true
  end
end
