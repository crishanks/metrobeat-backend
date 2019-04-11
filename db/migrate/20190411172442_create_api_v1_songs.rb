class CreateApiV1Songs < ActiveRecord::Migration[5.2]
  def change
    create_table :api_v1_songs do |t|

      t.timestamps
    end
  end
end
