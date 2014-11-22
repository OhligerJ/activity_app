class ActivitiesController < ApplicationController
  def new
  	@new_activity = Activity.new
  end

  def index
  	@activity_list = Activity.fun_activities_with_user 100
  end
end
