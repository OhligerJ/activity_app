class HomeController < ApplicationController
  def index
  	if session[:user_id] 
	  	@current_user = User.find session[:user_id] 
  	end
  end

  # def create
  # 	if session[:user_id] 
	 #  	@current_user = User.find session[:user_id] 
		# 	@current_user.activities.create(activity_params)
  #     redirect_to home_path
		# else
		# 	redirect_to '/login'
		# end
  # end

  # private
  # def activity_params 
  #   params.require(:activity).permit(:title, :location, :time_min, :time_max, :description, :img_url, :star_rating )
  # end

end
