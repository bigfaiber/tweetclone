FactoryBot.define do
  factory :user do
    email { "test-#{rand(1..99999).to_s.rjust(3, "0")}@mystring.com" }
    first_name { "MyString" }
    last_name { "MyString" }
    username { "test-#{rand(1..99999).to_s.rjust(3, "0") }"}
    password { "boooooooo"}
  end
end
