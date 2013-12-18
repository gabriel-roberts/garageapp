class DropPost < ActiveRecord::Migration
  def self.up
  drop_table :posts
end
end
