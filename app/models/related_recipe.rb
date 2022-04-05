class RelatedRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :related_recipe, :class_name => 'Recipe', foreign_key: "related_id"

end
