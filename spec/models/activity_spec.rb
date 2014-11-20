require 'rails_helper'

RSpec.describe Activity, :type => :model do
	it "should have a title" do
		expect(Activity.new).to have_db_column(:title)
	end
	it "should have a location" do
		expect(Activity.new).to have_db_column(:location)
	end
	it "should have an time_min" do
		expect(Activity.new).to have_db_column(:time_min)
	end
	it "should have a user id" do
		expect(Activity.new).to have_db_column(:user_id)
	end
	it "should have a user" do
		should belong_to(:user)
	end
end