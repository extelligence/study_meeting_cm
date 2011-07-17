class PlaylistsController < ApplicationController
  def new
    @ads = Ad.find(params[:ad_ids])
    @playlist = Playlist.new(:ads => @ads)
  end
end
