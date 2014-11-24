class ActivitiesController < ApplicationController
  def new
  	if session[:user_id] 
	  	@current_user = User.find session[:user_id] 
	  	@new_activity = @current_user.activities.new
  	else 
  		redirect_to '/login'
  	end
  end

  def index
  	@activity_list = Activity.fun_activities_with_user 100
  end

  def create
  	if session[:user_id] 
	  	@current_user = User.find session[:user_id] 
			@current_user.activities.create(activity_params)
		else
			redirect_to '/login'
		end
  	redirect_to :back
  end

  def show

  end



  private
  def activity_params 
    params.require(:activity).permit(:title, :location, :time_min, :time_max, :description, :api_url, :star_rating )
  end

end
