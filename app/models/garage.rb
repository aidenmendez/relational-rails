class Garage < ApplicationRecord
  validates_inclusion_of :multi_level, in: [true, false] 
  validates_presence_of :address, :name, :spot_count, :cost
  has_many :customers, dependent: :destroy

  def self.sort_by_bool_then_created_at
    order(multi_level: :desc, created_at: :desc)
  end

  def self.filter_min_spots(input)
    return all if input.blank?
    where("spot_count >= ?", input)
  end
end