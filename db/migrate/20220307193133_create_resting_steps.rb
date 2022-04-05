class CreateRestingSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :resting_steps do |t|
      t.string :restingStep
      t.references :steps

      t.timestamps
    end
  end
end
