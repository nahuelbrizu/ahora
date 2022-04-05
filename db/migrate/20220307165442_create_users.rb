class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :telephone_number
      t.date :birth_date
      t.string :gender
      t.string :first_name
      t.string :last_name
      t.references :recipes
      t.references :friendships

      t.timestamps
    end
  end
end
