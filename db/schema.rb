# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_04_04_171300) do
  create_table "allergy_warnings", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "ingredient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_allergy_warnings_on_ingredient_id"
  end

  create_table "appliances", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "appliance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "step_id"
    t.bigint "recipe_id", null: false
    t.index ["recipe_id"], name: "index_appliances_on_recipe_id"
    t.index ["step_id"], name: "index_appliances_on_step_id"
  end

  create_table "comments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id"
    t.index ["recipe_id"], name: "index_comments_on_recipe_id"
  end

  create_table "compatible_diets", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id", null: false
    t.index ["recipe_id"], name: "index_compatible_diets_on_recipe_id"
  end

  create_table "cooking_steps", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "cookingStep"
    t.bigint "steps_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "step_id"
    t.index ["step_id"], name: "index_cooking_steps_on_step_id"
    t.index ["steps_id"], name: "index_cooking_steps_on_steps_id"
  end

  create_table "custom_steps", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "customStep"
    t.bigint "steps_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "step_id"
    t.index ["step_id"], name: "index_custom_steps_on_step_id"
    t.index ["steps_id"], name: "index_custom_steps_on_steps_id"
  end

  create_table "cutting_steps", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "cuttingStep"
    t.bigint "steps_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "step_id"
    t.index ["step_id"], name: "index_cutting_steps_on_step_id"
    t.index ["steps_id"], name: "index_cutting_steps_on_steps_id"
  end

  create_table "diets", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "compatible_diet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compatible_diet_id"], name: "index_diets_on_compatible_diet_id"
  end

  create_table "difficulties", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "difficultyRating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id", null: false
    t.index ["recipe_id"], name: "index_difficulties_on_recipe_id"
  end

  create_table "favorites", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "favorite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id", null: false
    t.index ["recipe_id"], name: "index_favorites_on_recipe_id"
  end

  create_table "flavor_profiles", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_flavor_profiles_on_recipe_id"
  end

  create_table "friends", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "friend"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendships", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "friend_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "user_id"
    t.string "status"
    t.datetime "accepted_at"
    t.index ["id"], name: "id", unique: true
    t.index ["user_id"], name: "index_friendships_on_user_id"
  end

  create_table "images", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "url"
    t.string "thumbnail_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id", null: false
    t.index ["recipe_id"], name: "index_images_on_recipe_id"
  end

  create_table "ingredients", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "ingredientsNeeded"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "step_id"
    t.bigint "recipe_id", null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
    t.index ["step_id"], name: "index_ingredients_on_step_id"
  end

  create_table "integration_steps", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "steps_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "step_id"
    t.index ["step_id"], name: "index_integration_steps_on_step_id"
    t.index ["steps_id"], name: "index_integration_steps_on_steps_id"
  end

  create_table "likes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id", null: false
    t.index ["recipe_id"], name: "index_likes_on_recipe_id"
  end

  create_table "orders", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id", null: false
    t.index ["recipe_id"], name: "index_orders_on_recipe_id"
  end

  create_table "presenting_steps", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "steps_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "step_id"
    t.index ["step_id"], name: "index_presenting_steps_on_step_id"
    t.index ["steps_id"], name: "index_presenting_steps_on_steps_id"
  end

  create_table "produces", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "steps_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["steps_id"], name: "index_produces_on_steps_id"
  end

  create_table "ratings", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id", null: false
    t.index ["recipe_id"], name: "index_ratings_on_recipe_id"
  end

  create_table "recipes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "servings"
    t.string "country"
    t.string "cuisine"
    t.float "calories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id"
    t.index ["author_id"], name: "index_recipes_on_author_id"
  end

  create_table "related_recipes", id: { type: :bigint, unsigned: true }, charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "related_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.bigint "recipe_id"
    t.index ["id"], name: "id", unique: true
    t.index ["recipe_id"], name: "index_related_recipes_on_recipe_id"
  end

  create_table "resting_steps", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "restingStep"
    t.bigint "steps_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "step_id"
    t.index ["step_id"], name: "index_resting_steps_on_step_id"
    t.index ["steps_id"], name: "index_resting_steps_on_steps_id"
  end

  create_table "steps", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.float "Starting_time"
    t.float "estimated_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id"
    t.index ["recipe_id"], name: "index_steps_on_recipe_id"
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "user_name"
    t.string "password"
    t.string "telephone_number"
    t.date "birth_date"
    t.string "gender"
    t.string "first_name"
    t.string "last_name"
    t.bigint "recipes_id"
    t.bigint "friendships_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["friendships_id"], name: "index_users_on_friendships_id"
    t.index ["recipes_id"], name: "index_users_on_recipes_id"
  end

  create_table "videos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "recipe_id", null: false
    t.index ["recipe_id"], name: "index_videos_on_recipe_id"
  end

  add_foreign_key "allergy_warnings", "ingredients"
  add_foreign_key "appliances", "recipes"
  add_foreign_key "appliances", "steps"
  add_foreign_key "compatible_diets", "recipes"
  add_foreign_key "diets", "compatible_diets"
  add_foreign_key "difficulties", "recipes"
  add_foreign_key "favorites", "recipes"
  add_foreign_key "flavor_profiles", "recipes"
  add_foreign_key "images", "recipes"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "likes", "recipes"
  add_foreign_key "orders", "recipes"
  add_foreign_key "ratings", "recipes"
  add_foreign_key "recipes", "users", column: "author_id"
  add_foreign_key "steps", "recipes"
  add_foreign_key "videos", "recipes"
end
