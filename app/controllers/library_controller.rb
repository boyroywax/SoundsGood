class LibraryController < ApplicationController
  layout "spa"
  before_action :authenticate_user!

  def library
    @songs = Song.all.includes(:tags)
  end

  def likes
    @like_songs = current_user.like_songs
  end

  def sets
    @playlists = current_user.playlists
  end

  def following
    @followees = current_user.followees
  end

end
