require 'rails_helper'

RSpec.describe Favorite, :type => :model do
  it "should belong to activities" do
		should belong_to(:activity)
	end
	it "should belong to user" do
		should belong_to(:user)
	end
end
