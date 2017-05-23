FactoryGirl.define do
  factory :project do
    name { Faker::Hacker.adjective }
    description { Faker::Hacker.say_something_smart }
    link { Faker::Internet.url }
    image_link { Faker::Avatar.image }
    user
  end
end
