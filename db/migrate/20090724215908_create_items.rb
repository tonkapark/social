class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.references :user
      t.string :title
      t.text :body
      t.datetime :published_at

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
