class AddRecipeToAppliances < ActiveRecord::Migration[7.0]
  def change
     add_reference :appliances, :recipe, null: false, foreign_key: true
  end
end
