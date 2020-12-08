class Customer < ApplicationRecord
  validates_inclusion_of :currently_parked, in: [true, false]
  validates_presence_of :member_since
  belongs_to :garage

  def self.sort_by_date
    order(:created_at)
  end
end