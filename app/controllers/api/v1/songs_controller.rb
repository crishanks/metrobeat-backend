class Api::V1::SongsController < ApplicationController
  def create
    @song = Song.create(song_params)
  end

  private

  def song_params
    params = params.require(:song).permit(:id, :spotify_id, :title, :artist, :tempo, :album, :duration, :explicit, :preview_url)
  end
end
