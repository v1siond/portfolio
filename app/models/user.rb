class User < ApplicationRecord
  has_many :skills
  has_many :projects
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum role: {
  	user: 1,
  	admin: 2
  }
end
