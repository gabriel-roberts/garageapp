class RenameNameColumnToReg < ActiveRecord::Migration
  def self.up
  rename_column :cars, :seg, :reg
  end

  def self.down
  rename_column :cars, :reg, :seg
  end
end
