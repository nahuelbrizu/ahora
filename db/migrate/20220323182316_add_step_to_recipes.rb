class AddStepToRecipes < ActiveRecord::Migration[7.0]
  def change
    add_reference :steps, :recipe, foreign_key: { to_table: :recipes }
  end
end
