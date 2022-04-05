class CreateAppliances < ActiveRecord::Migration[7.0]
  def change
    create_table :appliances do |t|
      t.string :appliance

      t.timestamps
    end
  end
end
