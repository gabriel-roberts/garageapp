class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :age
      t.string :insurance_type
      t.boolean :full_licance
      t.integer :phone
      t.string :address
      t.string :PPSN

      t.timestamps
    end
  end
end
