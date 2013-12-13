class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.string :name
      t.string :address
      t.boolean :full
      t.integer :phone
      t.string :manageName

      t.timestamps
    end
  end
end
