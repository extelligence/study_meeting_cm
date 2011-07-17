class CreateAdPlaylists < ActiveRecord::Migration
  def self.up
    create_table :ad_playlists do |t|
      t.references :ad
      t.references :playlist
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :ad_playlists
  end
end
