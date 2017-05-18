FactoryGirl.define do
  factory :skill do
    name "MyString"
    starts { rand(6) }
    name { Faker::Hacker.adjective }
    stars { rand(1..5) }
    type_ { rand(1..2) }
    user
  end
end
