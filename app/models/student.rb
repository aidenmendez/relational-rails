class Student < ApplicationRecord
  inclusion_of :in_district
  validates_presence_of :name, :grade
  belongs_to :school
end