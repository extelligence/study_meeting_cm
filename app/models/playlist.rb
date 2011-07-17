class Playlist < ActiveRecord::Base
  has_many :ad_playlists, order: 'position'
  has_many :ads, through: :ad_playlists
end

# == Schema Information
#
# Table name: playlists
#
#  id         :integer         not null, primary key
#  meetup_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

