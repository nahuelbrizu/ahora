class AddRestingStepToSteps < ActiveRecord::Migration[7.0]
  def change
    add_reference :resting_steps, :step
  end
end
