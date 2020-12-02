class Garage < ApplicationRecord
  inclusion_of :currently_parked
  validates_presence_of :address, :name, :spot_count, :cost
  has_many :customers
end