class FriendRequest < ApplicationRecord
  belongs_to :young_user, class_name: 'User', foreign_key: 'young_user_id'
  belongs_to :old_user, class_name: 'User', foreign_key: 'old_user_id'

end
