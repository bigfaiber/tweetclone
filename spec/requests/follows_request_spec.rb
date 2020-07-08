require 'rails_helper'
require_relative '../../spec/support/devise'
require_relative '../../spec/support/controller_macros'
RSpec.describe FollowsController, type: :controller do



  describe "GET follows#followers" do
      login_user
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /following" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

end
