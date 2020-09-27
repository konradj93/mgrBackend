class CreatePostsSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :posts_songs do |t|
      t.references :post, index: true, null: false
      t.references :song, index: true, null: false
      t.timestamps
    end
    add_index :posts_songs, %i[post_id song_id], unique: true
  end
end


