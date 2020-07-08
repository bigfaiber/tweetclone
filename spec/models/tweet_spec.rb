require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before(:each) do
    @tweet = create :tweet
  end
  describe "validations" do
    it "should have a body" do
      should validate_presence_of(:body)
    end

    it "should belongs to a user" do
      should belong_to(:user)
    end

    it "should validate length of body" do
      should validate_length_of(:body).is_at_most(280)
    end
  end
end
