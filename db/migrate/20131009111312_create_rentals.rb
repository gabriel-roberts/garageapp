class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.date :startDate
      t.date :endDate
      t.integer :cost
      t.integer :paid
      t.integer :car_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
