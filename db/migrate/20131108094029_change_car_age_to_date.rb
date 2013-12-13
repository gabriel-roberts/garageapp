class ChangeCarAgeToDate < ActiveRecord::Migration
  def change
    change_column :cars, :age, :date
  end
end
