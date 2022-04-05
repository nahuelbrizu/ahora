class AddRecipeToComments < ActiveRecord::Migration[7.0]
  def change
        add_reference :comments, :recipe
  end
end