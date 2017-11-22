class User < ApplicationRecord
  #Associations
  has_many :user_interests, dependent: :destroy
  has_many :interests, through: :user_interests
  has_many :friend_requests_as_young_user, class_name: 'FriendRequest', foreign_key: 'young_user_id', dependent: :destroy
  has_many :friend_requests_as_old_user, class_name: 'FriendRequest', foreign_key: 'old_user_id', dependent: :destroy
  #attachinary photos
  has_attachment :profile_picture
  has_attachment :background_picture
  #validations
  validates :young, inclusion: { in: [true, false], allow_nil: false }
  validates :first_name, presence: true
  validates :last_name, presence: true



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    # Uncomment the section below if you want users to be created if they don't exist
    unless user
        user = User.create(first_name: data['first_name'],
           last_name: data['last_name'],
           email: data['email'],
           password: Devise.friendly_token[0,20]
        )
        url = data['image']
        user.profile_picture_url = url
        user.save
    end
    user
  end
end



