require 'rails_helper'

RSpec.describe "Tweets", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/tweets/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /user" do
    it "returns http success" do
      get "/tweets/user"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/tweets/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/tweets/create"
      expect(response).to have_http_status(:success)
    end
  end

end
