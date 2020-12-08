class Garage < ApplicationRecord
  validates_inclusion_of :multi_level, in: [true, false] 
  validates_presence_of :address, :name, :spot_count, :cost
  # dependent: :destroy destroys child elements
  has_many :customers, dependent: :destroy

end