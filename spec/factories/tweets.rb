FactoryBot.define do
  factory :tweet do
    body { "MyText" }
    user
  end
end
