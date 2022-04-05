class CreateCookingSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :cooking_steps do |t|
      t.string :cookingStep
      t.references :steps

      t.timestamps
    end
  end
end
