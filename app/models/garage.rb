class Garage < ApplicationRecord
  includes :currently_parked
  validates_presence_of :address, :name, :spot_count, :cost, :multi_level
  # dependent: :destroy destroys child elements
  has_many :customers, dependent: :destroy
end