class Activity < ActiveRecord::Base
	belongs_to :user

  has_many :favorites
  has_many :favorited, through: :favorites, source: :user
  # has_many :taco, through: :join_table, source: :model_trying_to_return
end
