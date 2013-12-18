class RenamePostcolumEployeeId < ActiveRecord::Migration
   def self.up
    rename_column :posts, :eployee_id, :employee_id
  end

  def self.down
    rename_column :posts, :employee_id, :eployee_id
  end
end
