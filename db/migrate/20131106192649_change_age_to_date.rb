class ChangeAgeToDate < ActiveRecord::Migration
  def change
    change_column :customers, :age, :date
  end
end
