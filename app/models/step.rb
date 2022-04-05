class Step < ApplicationRecord
  belongs_to :recipe
  has_many :ingredients
  has_many :appliances
  has_many :cutting_steps
  has_many :custom_steps
  has_many :receives
  has_many :cookingSteps
  has_many :resting_steps
  has_many :presenting_steps
  has_many :integration_steps
end
