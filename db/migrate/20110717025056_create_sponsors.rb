class CreateSponsors < ActiveRecord::Migration
  def self.up
    create_table :sponsors do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
    add_index :sponsors, :email, :unique => true 
  end

  def self.down
    drop_table :sponsors
  end
end
