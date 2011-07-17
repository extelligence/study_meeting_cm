class AddStaffIdToMeetup < ActiveRecord::Migration
  def self.up
    add_column :meetups, :staff_id, :integer
    add_index :meetups, :staff_id
  end

  def self.down
    remove_column :meetups, :staff_id
    remove_index :meetups, :staff_id
  end
end
