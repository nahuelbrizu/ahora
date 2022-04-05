class Recipe < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: "author_id"
  has_many :steps
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
  has_many :flavor_profiles
  has_many :allergy_warnings
  has_many :related_recipes, dependent: :destroy
  has_many :relateds, through: :related_recipes

end
