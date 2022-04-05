class CreateSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :steps do |t|
      t.float :Starting_time
      t.float :estimated_time


      t.timestamps
    end
  end
end
