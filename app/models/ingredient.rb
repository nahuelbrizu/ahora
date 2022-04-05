class Ingredient < ApplicationRecord
  belongs_to :recipe
  belongs_to  :step
  has_many :allergy_warnings
end
