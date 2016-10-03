class SongsController < ApplicationController
  def create
    song_params = params[:song]
    @song = Song.create(title: song_params[:title], artist_name: song_params[:artist_name])
    redirect_to artist_path(song_params[:artist_id])
  end
end
