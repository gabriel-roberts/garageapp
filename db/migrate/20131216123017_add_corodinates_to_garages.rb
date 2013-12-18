class AddCorodinatesToGarages < ActiveRecord::Migration
  def change
    add_column :garages, :latitude, :flote

    add_column :garages, :longitude, :float

  end
end
