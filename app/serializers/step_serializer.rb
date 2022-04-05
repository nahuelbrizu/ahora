class StepSerializer < ActiveModel::Serializer
    attributes :id, :Starting_time, :estimated_time, :recipe_id
     has_many :ingredients
     has_many :recipe
     has_many :appliances
     has_many :cutting_steps
     has_many :custom_steps
     has_many :cookingSteps
     has_many :resting_steps
     has_many :presenting_steps
     has_many :integration_steps
end

