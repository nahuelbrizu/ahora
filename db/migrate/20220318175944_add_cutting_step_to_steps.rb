class AddCuttingStepToSteps < ActiveRecord::Migration[7.0]
  def change
     add_reference :cutting_steps, :step
  end
end
