class ChangeCostToFloat < ActiveRecord::Migration
  def change
    change_column :rentals, :cost, :float
  end
end
