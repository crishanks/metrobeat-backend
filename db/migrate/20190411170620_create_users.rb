class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :image
      t.string :country
      t.string :spotify_url
      t.string :href 
      t.string :uri
      t.string :spotify_id
      t.string :access_token
      t.string :refresh_token
      t.boolean :has_metro_beat_playlist, :default => false
      t.timestamps
    end
  end
end
