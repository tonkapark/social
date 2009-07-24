class AddDisplayNameToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :displayname, :string
  end

  def self.down
    remove_column :users, :displayname
  end
end
