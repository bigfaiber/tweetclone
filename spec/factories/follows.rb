FactoryBot.define do
  factory :follow do
    user_id { 1 }
    follower_id { 1 }
    blocked { false }
  end
end
