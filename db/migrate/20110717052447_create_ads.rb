class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.integer :meetup_id
      t.integer :sponsor_id
      t.string :name
      t.integer :second
      t.string :url
      t.string :ec_order

      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
