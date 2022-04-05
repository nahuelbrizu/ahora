class CreateAllergyWarnings < ActiveRecord::Migration[7.0]
  def change
    create_table :allergy_warnings do |t|
      t.references :ingredient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
