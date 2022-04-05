class CreateRelatedRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table "related_recipes", id: :serial, force: :cascade do |t|
      t.integer "related_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.bigint "recipe_id"
      t.index ["recipe_id"], name: "index_related_recipes_on_recipe_id"
    end
  end
end
