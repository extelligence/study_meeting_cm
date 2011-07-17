class CreateMeetups < ActiveRecord::Migration
  def self.up
    create_table :meetups do |t|
      t.datetime :date
      t.string :name
      t.string :location
      t.integer :capacity
      t.string :group_name
      t.string :site_url

      t.timestamps
    end
  end

  def self.down
    drop_table :meetups
  end
end
