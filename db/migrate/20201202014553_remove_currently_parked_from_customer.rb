class RemoveCurrentlyParkedFromCustomer < ActiveRecord::Migration[5.2]
  def change
    remove_column :customers, :currently_parked, :boolean
  end
end
