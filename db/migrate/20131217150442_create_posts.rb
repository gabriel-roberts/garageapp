class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :eployee_id
      t.integer :car_id

      t.timestamps
    end
  end
end