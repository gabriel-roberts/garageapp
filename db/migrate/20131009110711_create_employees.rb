class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :address
      t.integer :phone
      t.string :experience
      t.integer :garage_id
      t.string :role

      t.timestamps
    end
  end
end
