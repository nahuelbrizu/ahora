class CreateProduces < ActiveRecord::Migration[7.0]
  def change
    create_table :produces do |t|
      t.references :steps

      t.timestamps
    end
  end
end
