require 'rails_helper'

RSpec.describe User, :type => :model do
	it "should have a username" do
		expect(User.new).to have_db_column(:username)
	end
	it "should have a location" do
		expect(User.new).to have_db_column(:location)
	end
	it "should have an img" do
		expect(User.new).to have_db_column(:img)
	end
	it "should have many activities" do
		should have_many(:activities)
	end
end