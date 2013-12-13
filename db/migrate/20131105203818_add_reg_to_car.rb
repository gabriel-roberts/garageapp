class AddRegToCar < ActiveRecord::Migration
  def change
    add_column :cars, :Reg, :string
  end
end
