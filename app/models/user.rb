class User < ActiveRecord::Base
	has_secure_password

	has_many :activities
#	has_many :activities, through: :activities_users
end
