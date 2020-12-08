class Garage < ApplicationRecord
  validates_inclusion_of :multi_level, in: [true, false] 
  validates_presence_of :address, :name, :spot_count, :cost
  # dependent: :destroy destroys child elements
  has_many :customers, dependent: :destroy

  def self.sort_by_created_at
    order(:created_at).reverse_order
  end
end