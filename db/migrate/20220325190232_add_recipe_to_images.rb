class AddRecipeToImages < ActiveRecord::Migration[7.0]
  def change
       add_reference :images, :recipe, null: false, foreign_key: true
  end
end
