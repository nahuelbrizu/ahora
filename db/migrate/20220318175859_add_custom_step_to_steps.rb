class AddCustomStepToSteps < ActiveRecord::Migration[7.0]
  def change
    add_reference :custom_steps, :step
  end
end
