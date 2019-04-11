class Api::V1::SongSerializer < ActiveModel::Serializer
  attributes :id, :spotify_id, :name, :artist, :genre, :tempo, :album, :duration, :explicit, :preview_url

  has_many :game_logs
  has_many :users, through: :game_logs
end
