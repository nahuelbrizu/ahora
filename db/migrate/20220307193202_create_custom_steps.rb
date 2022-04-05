class CreateCustomSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :custom_steps do |t|
      t.string :customStep
      t.references :steps

      t.timestamps
    end
  end
end
