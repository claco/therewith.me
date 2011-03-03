class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :nickname
      t.string :provider
      t.string :uid
      t.integer :event_id, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
