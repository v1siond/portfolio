FactoryGirl.define do
  factory :project do
    name "MyString"
    description "MyString"
    link "MyString"
    name { Faker::Hacker.adjective }
    description { Faker::Hacker.say_something_smart }
    link { Faker::Internet.url }
    image_link { Faker::Avatar.image }
    user
  end
end
