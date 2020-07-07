class Follow < ApplicationRecord
  belongs_to :user
  belongs_to :follower, :class_name => 'User'

  validates_presence_of :user_id
  validates_presence_of :follower_id
  validates :user_id, uniqueness: {scope: :follower_id}
end
