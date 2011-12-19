class AddSaltToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :salt, :string
  end
  def down
    remove_column :users, :salt
  end
end
