class AddStatusToMeetup < ActiveRecord::Migration
  def self.up
    add_column :meetups, :status, :string
  end

  def self.down
    remove_column :meetups, :status
  end
end
