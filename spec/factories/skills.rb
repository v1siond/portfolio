FactoryGirl.define do
  factory :skill do
    name "MyString"
    starts { rand(6) }
    user
  end
end
