class CreateAdverts < ActiveRecord::Migration[6.0]
  def change
    create_table :adverts do |t|
      t.string :advert_url
      t.string :advert_image
      t.string :advert_description
      t.integer :layout
      t.timestamps
    end
  end
end
