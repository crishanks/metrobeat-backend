class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.integer :spotify_id
      t.string :name
      t.string :artist
      t.integer :tempo
      t.string :album
      t.integer :duration
      t.boolean :explicit
      t.string :preview_url
      t.timestamps
    end
  end
end
