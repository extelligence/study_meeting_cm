class AdPlaylist < ActiveRecord::Base
  belongs_to :ad
  belongs_to :playlist

  acts_as_list scope: :playlist
end

# == Schema Information
#
# Table name: ad_playlists
#
#  id          :integer         not null, primary key
#  ad_id       :integer
#  playlist_id :integer
#  position    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

