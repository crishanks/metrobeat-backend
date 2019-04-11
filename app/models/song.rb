class Song < ApplicationRecord
  #Relationships
  has_many :game_logs
  has_many :users, through: :game_logs
end
