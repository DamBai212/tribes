class Lecture < ApplicationRecord
  belongs_to :course
  accepts_nested_attributes_for :lectures :allow_destroy => true
end
