class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :country, :spotify_url, :href, :uri, :access_token, :refresh_token

  has_many :game_logs
  has_many :songs, through: :game_logs
end
