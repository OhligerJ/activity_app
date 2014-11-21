class HomeController < ApplicationController
  def index
  	@activity_list = Activity.fun_activities_with_user 100
  end
end
