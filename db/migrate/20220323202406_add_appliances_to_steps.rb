class AddAppliancesToSteps < ActiveRecord::Migration[7.0]
  def change
    add_reference :appliances, :step, foreign_key: { to_table: :steps }

  end
end
