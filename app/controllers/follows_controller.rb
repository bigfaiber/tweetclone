class FollowsController < ApplicationController
  before_action :authenticate_user!

  def new
    @follow = Follow.new
    @following = current_user.sorted_following
  end
  def create
    followed = User.find_by(username: follow_params[:user_id])
    follow = Follow.new(user_id: followed&.id)
    follow.follower = current_user
    if follow.save
      message = {success: "Successfully followed"}
      redirect_to user_own_tweets_path(followed), flash: message
    else
      message =  {alert: follow.errors.full_messages.to_sentence}
      redirect_to new_follow_path, flash: message
    end
  end

  def followers
    @followers = current_user.sorted_followers
  end

  def following
    @following = current_user.sorted_following
  end

  def follow_params
    params.require(:follow).permit(:user_id)
  end

end
