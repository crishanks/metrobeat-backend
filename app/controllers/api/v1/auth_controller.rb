class Api::V1::AuthController < ApplicationController

  def spotify_request
    url = "https://accounts.spotify.com/authorize"
    query_params = {
      client_id: Rails.application.credentials[Rails.env.to_sym][:spotify][:client_id],
      response_type: 'code',
      redirect_uri: 'http://localhost:3001/',
      scope: "user-library-read 
      playlist-read-collaborative
      playlist-modify-private
      user-modify-playback-state
      user-read-private
      user-top-read
      playlist-modify-public
      user-read-recently-played",
     show_dialog: false
    }
    redirect_to "#{url}?#{query_params.to_query}"
  end
end