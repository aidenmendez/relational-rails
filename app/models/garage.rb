class Garage < ApplicationRecord
  includes :currently_parked
  validates_presence_of :address, :name, :spot_count, :cost
  has_many :customers, dependent: :destroy
end