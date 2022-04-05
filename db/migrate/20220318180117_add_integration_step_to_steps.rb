class AddIntegrationStepToSteps < ActiveRecord::Migration[7.0]
  def change
    add_reference :integration_steps, :step
  end
end
