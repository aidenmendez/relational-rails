class AddSpotCountToGarage < ActiveRecord::Migration[5.2]
  def change
    add_column :garages, :spot_count, :integer
  end
end
