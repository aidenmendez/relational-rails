class AddCurrentlyParkedToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :currently_parked, :boolean, default: false
  end
end
