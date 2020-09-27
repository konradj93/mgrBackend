class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :twitter
      t.string :facebook
      t.string :instagram
      t.string :sound_cloud
      t.string :youtube
      t.string :nationality
      t.timestamps
    end
  end
end
