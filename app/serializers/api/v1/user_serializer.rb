class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :country, :spotify_url, :href, :uri, :spotify_id, :access_token, :refresh_token, :has_metro_beat_playlist, :metro_beat_playlist_id

  has_many :game_logs
  has_many :songs, through: :game_logs
end
