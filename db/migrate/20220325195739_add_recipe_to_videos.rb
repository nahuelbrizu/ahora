class AddRecipeToVideos < ActiveRecord::Migration[7.0]
  def change
      add_reference :videos, :recipe, null: false, foreign_key: true
  end
end
