class AddNotificationPreferenceToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :item_notify, :boolean, :default => true
  end

  def self.down
    remove_column :users, :item_notify
  end
end
