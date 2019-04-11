class User < ApplicationRecord
  #Relationships
  has_many :game_logs
  has_may :songs, through: :game_logs
end
