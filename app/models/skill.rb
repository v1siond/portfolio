class Skill < ApplicationRecord
  belongs_to :user

  enum stars: {
    '1 start': 1,
    '2 start': 2,
    '3 start': 3,
    '4 start': 4,
    '5 start': 5
  }

  enum type_: {
    'back-end': 1,
    'front-end': 2,
  }
end
