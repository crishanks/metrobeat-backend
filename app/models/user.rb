class User < ApplicationRecord
  #Relationships
  has_many :game_logs
  has_many :songs, through: :game_logs
end
