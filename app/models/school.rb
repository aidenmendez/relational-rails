class School < ApplicationRecord
  validates_presence_of :name, :number_of_teachers, :is_public
  has_many :students
end