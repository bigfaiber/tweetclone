require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe "validations" do
    before(:each) do
      @tweet = create :tweet
    end
    it "should have a body" do
      should validate_presence_of(:body)
    end
  end
end
