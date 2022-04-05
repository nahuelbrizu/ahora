class AddRecipeToDifficulties < ActiveRecord::Migration[7.0]
  def change
     add_reference :difficulties, :recipe, null: false, foreign_key: true
  end
end
