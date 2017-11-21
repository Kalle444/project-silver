class User < ApplicationRecord
  has_many :user_interests, dependent: :destroy
  has_many :friend_requests_as_young_user, class_name: 'FriendRequest', foreign_key: 'young_user_id', dependent: :destroy
  has_many :friend_requests_as_old_user, class_name: 'FriendRequest', foreign_key: 'old_user_id', dependent: :destroy
  validates :young, inclusion: { in: [true, false], allow_nil: false }
  validates :first_name, presence: true
  validates :last_name, presence: true



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end



