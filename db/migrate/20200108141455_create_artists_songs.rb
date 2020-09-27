class CreateArtistsSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :artists_songs do |t|
      t.references :artist, index: true, null: false
      t.references :song, index: true, null: false
      t.timestamps
    end
    add_index :artists_songs, %i[artist_id song_id], unique: true
  end
end


