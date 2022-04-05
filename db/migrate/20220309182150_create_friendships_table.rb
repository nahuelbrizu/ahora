class CreateFriendshipsTable < ActiveRecord::Migration[7.0]
  def change
    create_table "friendships", id: :serial, force: :cascade do |t|
      t.integer "friend_id"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.bigint "user_id"
      t.string "status"
      t.datetime "accepted_at"
      t.index ["user_id"], name: "index_friendships_on_user_id"
    end
  end
end
