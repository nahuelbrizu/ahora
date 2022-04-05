class CreatePresentingSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :presenting_steps do |t|
      t.references :steps

      t.timestamps
    end
  end
end
