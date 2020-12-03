class Student < ApplicationRecord
  includes :in_district
  validates_presence_of :name, :grade
  belongs_to :school
end