class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :image, :country, :birthdate

  has_many :game_logs
  has_many :songs, through: :game_logs
end
