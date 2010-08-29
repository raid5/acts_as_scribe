class CreateScribeActivities < ActiveRecord::Migration

  def self.up
    create_table :scribe_activities do |t|
      t.integer :user_id
      t.string  :action
      t.integer :item_id
      t.string  :item_type
      t.timestamps
    end
    add_index :scribe_activities, [:item_type, :item_id]
  end

  def self.down
    remove_index :scribe_activities, [:item_type, :item_id]
    drop_table :scribe_activities
  end

end