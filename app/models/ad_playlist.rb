class AdPlaylist < ActiveRecord::Base
  belongs_to :ad
  belongs_to :playlist

  acts_as_list scope: :playlist
end
