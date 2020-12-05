class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :garages, :at_capacity, :multi_level
  end
end
