class User < ApplicationRecord
  has_many :user_courses
  has_many :courses, through: :user_courses
  has_many :lectures, through: :courses
end
