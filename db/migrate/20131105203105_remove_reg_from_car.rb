class RemoveRegFromCar < ActiveRecord::Migration
  def up
  remove_column :cars, :reg
  end

  def down
  remove_column :cars, :reg
  end
end
