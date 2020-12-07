class School < ApplicationRecord
  validates_inclusion_of :is_public, in: [true, false]
  validates_presence_of :name, :number_of_teachers
  has_many :students, dependent: :destroy 
end