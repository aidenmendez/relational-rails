class CreateGarage < ActiveRecord::Migration[5.2]
  def change
    create_table :garages do |t|
      t.string :address
      t.string :name
      t.timestamps
    end
  end
end
