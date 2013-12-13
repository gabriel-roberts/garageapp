class AddPaymentDueToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :paymentDue, :float

  end
end
