class CreateStaffs < ActiveRecord::Migration
  def self.up
    create_table :staffs do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
    add_index :staffs, :email, :unique => true 
  end

  def self.down
    drop_table :staffs
  end
end
