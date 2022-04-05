class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.integer :servings
      t.string :country
      t.string :cuisine
      t.float :calories


      t.timestamps
    end
  end
end
