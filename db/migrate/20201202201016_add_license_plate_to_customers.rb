class AddLicensePlateToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :license_plate, :string
  end
end
