class TweetsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @tweets = Tweet.all.order(created_at: :desc).limit(10)
  end

  def user
    @user = User.find_by(username: params[:username])
    if @user.nil?
      message = {error: "User does not exist"}
      redirect_to root_path, flash: message
    end
    @tweets = Tweet.by_user(@user&.id).order(created_at: :desc).limit(10)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    tweet = Tweet.new(tweet_params)
    tweet.user = current_user
    if tweet.save
      message = {success: "Successfully created"}
      redirect_to root_path, flash: message
    else
      message =  {alert: tweet.errors.full_messages.to_sentence}
      redirect_to new_tweets_path, flash: message
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:body)
  end
end