class ActivitiesController < ApplicationController
  def new
  	@current_user = User.find params[:user_id] #CHANGE THIS FOR THE LOGGED USER MAYBE
  	@new_activity = @current_user.activities.new
  end

  def index
  	@activity_list = Activity.fun_activities_with_user 100
  end

  def create
  	@current_user = User.find params[:user_id] #CHANGE THIS FOR THE LOGGED USER MAYBE
		@current_user.activities.create(activity_params)

  	redirect_to :back
  end





  private
  def activity_params 
    params.require(:activity).permit(:title, :location, :time_min, :time_max, :description, :api_url, :star_rating )
  end

end
