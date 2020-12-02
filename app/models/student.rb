class Student < ApplicationRecord
  validates_presence_of :name, :grade, :in_district
  belongs_to :school
end