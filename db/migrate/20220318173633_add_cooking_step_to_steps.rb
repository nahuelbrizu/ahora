class AddCookingStepToSteps < ActiveRecord::Migration[7.0]
  def change
    add_reference :cooking_steps, :step
  end
end
