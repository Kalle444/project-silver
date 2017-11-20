class User < ApplicationRecord
  has_many :user_interests
  has_many :friend_requests_as_young_user, class_name: 'User', foreign_key: 'young_user_id'
  has_many :friend_requests_as_old_user, class_name: 'User', foreign_key: 'old_user_id'


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
