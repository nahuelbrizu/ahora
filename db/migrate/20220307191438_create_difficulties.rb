class CreateDifficulties < ActiveRecord::Migration[7.0]
  def change
    create_table :difficulties do |t|
      t.string :difficultyRating

      t.timestamps
    end
  end
end
