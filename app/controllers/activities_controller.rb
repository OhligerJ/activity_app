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
    if params["days"] =~ %r/[^0-9]/ || params["hours"] =~ %r/[^0-9]/ || params["minutes"] =~ %r/[^0-9]/
      flash["failure"]= "Yo, numbers only, plis"
      redirect_to home_path
      return
    end
    if params["days"] == ""
      params["days"] = 0
    end
    if params["hours"] == ""
      params["hours"] = 0
    end
    if params["minutes"] == ""
      params["minutes"] = 0
    end
    if params["days"].to_i + params["hours"].to_i + params["minutes"].to_i == 0
      flash["failure"]= "Please input a time greater than zero."
      redirect_to home_path
    end
  	@activity_list = Activity.fun_activities_with_user(Activity.convert_to_minutes(params["days"], params["hours"], params["minutes"]))
    if @activity_list.length == 0
      flash["failure"] = "No results were returned."
      redirect_to home_path
    end
  end

  def create
  	if session[:user_id] 
	  	@current_user = User.find session[:user_id] 
			@current_user.activities.create(activity_params)
      redirect_to home_path
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
