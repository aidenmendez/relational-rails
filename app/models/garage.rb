class Garage < ApplicationRecord
  includes :currently_parked, :multi_level
  validates_presence_of :address, :name, :spot_count, :cost
  # dependent: :destroy destroys child elements
  has_many :customers, dependent: :destroy
end