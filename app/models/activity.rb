class Activity < ActiveRecord::Base
	belongs_to :user
	
  has_many :favorites
  has_many :favorited, through: :favorites, source: :user
  # has_many :taco, through: :join_table, source: :model_trying_to_return

  def self.fun_activities_with_user time, user=nil
  	if user
  		return fun_activities(time).where("id not in (?)", user.favorited.select("activities.id"))
  	end
  		
  	fun_activities time
  end




  private

  def self.fun_activities time
  	 where('time_min <= #{time}').where("time_max IS NULL OR time_max >= #{time}")
  end
end
