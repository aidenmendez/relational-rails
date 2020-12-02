class CreateSchool < ActiveRecord::Migration[5.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.integer :number_of_teachers
      t.boolean :is_public
    
      t.timestamps
    end
  end
end
