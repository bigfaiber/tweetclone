class Tweet < ApplicationRecord
  scope :by_user, ->(user_id){where(user_id: user_id)}
  belongs_to :user

  validates_presence_of :body
  validates_length_of :body, :minimum => 1, :maximum => 280

end
