require 'rails_helper'

RSpec.describe AccessController, :type => :controller do

  describe "GET forgot_password" do
    it "returns http success" do
      get :forgot_password
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET login" do
    it "returns http success" do
      get :login
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET reset_password" do
    it "returns http success" do
      get :reset_password
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET signup" do
    it "returns http success" do
      get :signup
      expect(response).to have_http_status(:success)
    end
  end

end
