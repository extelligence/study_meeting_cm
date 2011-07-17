class Playlist < ActiveRecord::Base
  has_many :ad_playlists, order: 'position'
  has_many :ads, throuth: :ad_playlists
end
