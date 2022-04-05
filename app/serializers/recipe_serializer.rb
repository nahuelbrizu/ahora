class RecipeSerializer < ActiveModel::Serializer
   attributes :id, :country, :servings, :cuisine, :calories, :author_id, :related_id
   has_one :author, :serializer => UserSerializer
   has_one :steps
   has_many :comments
   has_many :ingredients
   has_many :images
   has_many :likes
   has_many :appliances
   has_many :ratings
   has_many :favorites
   has_many :difficulties
   has_many :orders
   has_many :compatible_diets
   has_many :videos
   has_many :related_recipes
end
