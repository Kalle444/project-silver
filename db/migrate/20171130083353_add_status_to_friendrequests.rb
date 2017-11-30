class AddStatusToFriendrequests < ActiveRecord::Migration[5.1]
  def change
    add_column :friend_requests, :status, :string
  end
end
