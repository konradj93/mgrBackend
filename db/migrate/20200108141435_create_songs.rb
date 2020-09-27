class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :youtube
      t.string :sound_cloud
      t.string :spotify
      t.string :tidal
      t.string :amazon_music
      t.string :deezer
      t.string :google_play
      t.string :apple_music
      t.json :others
      t.string :tags, array: true
      t.timestamps
    end
  end
end
