class CreateCuttingSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :cutting_steps do |t|
      t.string :cuttingStep
      t.references :steps

      t.timestamps
    end
  end
end
