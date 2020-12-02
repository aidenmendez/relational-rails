class Customer < ApplicationRecord
  validates_presence_of :member_since, :currently_parked
  belongs_to :garage
end