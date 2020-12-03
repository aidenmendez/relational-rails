class Customer < ApplicationRecord
  includes :currently_parked
  validates_presence_of :member_since
  belongs_to :garage
end