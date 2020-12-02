class CreateCustomer < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.references :garage, foreign_key: true
      t.integer :member_since
      t.boolean :currently_parked
      t.timestamps
    end
  end
end
