class FriendRequest < ApplicationRecord
  belongs_to :young_user, class_name: 'User', foreign_key: 'young_user_id'
  belongs_to :old_user, class_name: 'User', foreign_key: 'old_user_id'

  validates :request_message, presence: true
  validates :request_message, length: { maximum: 300,
    too_long: "300 characters is the maximum allowed" }

end
