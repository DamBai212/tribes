class Course < ApplicationRecord
  has_many :lectures
  has_many :user_courses
end
