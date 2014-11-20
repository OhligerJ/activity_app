class User < ActiveRecord::Base
	has_secure_password

	validates :username,
    presence: true,
    uniqueness: true

	has_many :activities

	has_many :favorites
	has_many :favorited, through: :favorites, source: :activity
	# has_many :taco, through: :join_table, source: :model_trying_to_return
end
