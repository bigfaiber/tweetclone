class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, uniqueness: true
  validates :username, uniqueness: true

  has_many :tweets, dependent: :destroy
  has_many :followers, :class_name => 'Follow', :foreign_key => 'user_id'
  has_many :following, :class_name => 'Follow', :foreign_key => 'follower_id'

  def sorted_followers
    followers.sort_by { |f| "#{f.follower.first_name} + #{f.follower.last_name}"}
  end


  def to_param
    username
  end
end
