class Api::V1::GameLogSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :song_id

  belongs_to :user
  belongs_to :song
end
