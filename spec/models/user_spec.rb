require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @tweet = create :user
  end
  describe "validations" do
    it "should have an email" do
      should validate_presence_of(:email)
    end
    it "should have a password" do
      should validate_presence_of(:password)
    end
    it "should have a first_name" do
      should validate_presence_of(:first_name)
    end
    it "should have a last_name" do
      should validate_presence_of(:last_name)
    end
    it "should validate uniqueness of username" do
      should validate_uniqueness_of(:username)
    end
    it "should validate uniqueness of email" do
      should validate_uniqueness_of(:email).ignoring_case_sensitivity
    end
  end

  describe "relationships" do
    it "should have many tweets" do
      should have_many(:tweets)
    end
    it "should have many followers" do
      should have_many(:followers)
    end
    it "should be following many" do
      should have_many(:following)
    end

  end
end
