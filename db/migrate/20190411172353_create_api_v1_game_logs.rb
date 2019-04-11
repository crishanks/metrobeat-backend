class CreateApiV1GameLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :api_v1_game_logs do |t|

      t.timestamps
    end
  end
end
