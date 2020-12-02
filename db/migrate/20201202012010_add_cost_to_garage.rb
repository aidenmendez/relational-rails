class AddCostToGarage < ActiveRecord::Migration[5.2]
  def change
    add_column :garages, :cost, :integer
  end
end
