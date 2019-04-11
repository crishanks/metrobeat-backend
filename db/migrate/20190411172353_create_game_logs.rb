class CreateGameLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :game_logs do |t|
      t.integer :user_id
      t.integer :song_id
      t.timestamps
    end
  end
end
