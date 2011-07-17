class PlaylistsController < ApplicationController
  def show
    @playlist = Playlist.find(params[:id])
  end

  def create
    @playlist = Playlist.create!(ads: Ad.find(params[:ad_ids]))

    redirect_to @playlist
  end
end
