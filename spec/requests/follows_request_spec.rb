require 'rails_helper'

RSpec.describe "Follows", type: :request do

  describe "GET /create" do
    it "returns http success" do
      get "/follows/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /followers" do
    it "returns http success" do
      get "/follows/followers"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /following" do
    it "returns http success" do
      get "/follows/following"
      expect(response).to have_http_status(:success)
    end
  end

end
