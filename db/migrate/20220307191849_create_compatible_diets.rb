class CreateCompatibleDiets < ActiveRecord::Migration[7.0]
  def change
    create_table :compatible_diets do |t|
      #  t.reference :diet

      t.timestamps
    end
  end
end
