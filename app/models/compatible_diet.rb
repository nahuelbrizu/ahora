class CompatibleDiet < ApplicationRecord
  has_many :diets, through: :recipes
end
