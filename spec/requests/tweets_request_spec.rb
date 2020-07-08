require 'rails_helper'

RSpec.describe TweetsController, type: :controller do

  describe "GET /index" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /user" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

end
