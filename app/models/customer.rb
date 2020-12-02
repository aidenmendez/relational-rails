class Customer < ApplicationRecord
  inclusion_of :currently_parked
  validates_presence_of :member_since
  belongs_to :garage
end