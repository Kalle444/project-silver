class CreateFriendRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :friend_requests do |t|
      t.integer :young_user_id, foreign_key: true
      t.integer :old_user_id, foreign_key: true
      t.text :request_message

      t.timestamps
    end
  end
end
