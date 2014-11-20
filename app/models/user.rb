class User < ActiveRecord::Base
	has_secure_password
	has_many :activities
  has_many :activity_users
	has_many :favorites, through: :activity_users, source: :activity
end
