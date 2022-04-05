class AddPresentingStepToSteps < ActiveRecord::Migration[7.0]
  def change
    add_reference :presenting_steps, :step
  end
end
