require 'rails_helper'

RSpec.describe Follow, type: :model do
  describe "validations" do
    it "should have a user" do
      should validate_presence_of(:user_id)
    end
    it "should have a follower" do
      should validate_presence_of(:follower_id)
    end

    it "should belongs to a user" do
      should belong_to(:user)
    end
    it "should belongs to a follower" do
      should belong_to(:follower)
    end
    it "should validate uniqueness of user_id scoped to follower" do
      should validate_uniqueness_of(:user_id).scoped_to(:follower_id)
    end
  end
end
