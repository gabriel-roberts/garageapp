class ChangePaidToFloat < ActiveRecord::Migration
  def change
    change_column :rentals, :paid, :float
  end
end
