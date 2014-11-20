class Activity < ActiveRecord::Base
	belongs_to :user
  has_many :activity_users
  has_many :favorited, through: :activity_users, source: :user
end
