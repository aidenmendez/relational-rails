class Customer < ApplicationRecord
  validates_inclusion_of :currently_parked, in: [true, false]
  validates_presence_of :member_since
  belongs_to :garage

  def self.sort_by_created_at
    order(:created_at).reverse_order
  end

  def self.sort_by_bool_then_created_at
    order(currently_parked: :desc, created_at: :desc)
  end
end