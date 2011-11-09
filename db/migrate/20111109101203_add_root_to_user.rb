class AddRootToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :root, :boolean, :default => false  
  end

  def self.down
  	remove_column :users, :root
  end
end
