class AddProfileToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :about, :text
    add_column :users, :website, :string
  end

  def self.down
    remove_column :users, :website
    remove_column :users, :about
  end
end
