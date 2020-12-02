class School < ApplicationRecord
  inclusion_of :is_public
  validates_presence_of :name, :number_of_teachers
  has_many :students
end