class RenameNameColumnToVersion < ActiveRecord::Migration
  def self.up
  rename_column :cars, :type, :version
  end

  def self.down
  rename_column :cars, :version, :type
  end
end
