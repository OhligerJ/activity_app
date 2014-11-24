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

  def favorite
    type = params[:type]
    if type == "favorite"
      @current_user.favorites << @activity
      redirect_to :back, notice: 'You favorited #{@activity.title}'
    else
      # Type missing, nothing happens
      redirect_to :back, notice: 'Nothing happened.'
    end
  end



  def show
  	@activity = Activity.find params[:id]
  end




  private
  def activity_params 
    params.require(:activity).permit(:title, :location, :time_min, :time_max, :description, :img_url, :star_rating )
  end

end
