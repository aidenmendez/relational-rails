class AddAtCapactiyToGarages < ActiveRecord::Migration[5.2]
  def change
    add_column :garages, :at_capacity, :boolean
  end
end
