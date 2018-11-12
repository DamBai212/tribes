class Course < ApplicationRecord
  has_many :lectures
  has_many :user_courses
  has_many :users, through: :user_courses

  accepts_nested_attributes_for :lectures
end
