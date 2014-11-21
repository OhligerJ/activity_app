class ActivitiesController < ApplicationController

	def new
		@new_activity = Activity.new
	end

end
