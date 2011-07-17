class Playlist < ActiveRecord::Base
  has_many :ad_playlists, order: 'position'
  has_many :ads, through: :ad_playlists
end
