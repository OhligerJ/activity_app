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

  def favorite
    type = params[:type]
    if type == "favorite"
      @current_user.favorites << @activity
      redirect_to :back, notice: 'You favorited #{@activity.title}'

    elsif type == "unfavorite"
      @current_user.favorites.delete(@activity)
      redirect_to :back, notice: 'Unfavorited #{@activity.name}'

    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end





  private
  def activity_params 
    params.require(:activity).permit(:title, :location, :time_min, :time_max, :description, :api_url, :star_rating )
  end

end
