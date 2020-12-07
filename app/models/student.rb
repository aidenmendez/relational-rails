class Student < ApplicationRecord
  validates_inclusion_of :in_district, in: [true, false]
  validates_presence_of :name, :grade
  belongs_to :school
end