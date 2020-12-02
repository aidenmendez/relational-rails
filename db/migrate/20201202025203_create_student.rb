class CreateStudent < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.integer :grade
      t.boolean :in_district
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end
