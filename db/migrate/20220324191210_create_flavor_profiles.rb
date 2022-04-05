class CreateFlavorProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :flavor_profiles do |t|
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
