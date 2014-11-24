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

  def self.convert_to_minutes minutes, hours, days
    return minutes.to_i + (hours.to_i * 60) + (days.to_i * 24 * 60)
  end

  private

  def self.fun_activities time
  	 where("time_min <= " + time.to_s).where("time_max IS NULL OR time_max >= " + time.to_s)
  end
end
