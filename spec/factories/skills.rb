FactoryGirl.define do
  factory :skill do
    name { Faker::Hacker.adjective }
    stars { rand(1..5) }
    type_ { rand(1..2) }
    user
  end
end
