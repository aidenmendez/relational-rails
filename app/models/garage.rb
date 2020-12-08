class Garage < ApplicationRecord
  validates_inclusion_of :multi_level, in: [true, false] 
  validates_presence_of :address, :name, :spot_count, :cost
  has_many :customers, dependent: :destroy

  def self.sort_by_bool_then_created_at
    order(multi_level: :desc, created_at: :desc)
  end
end