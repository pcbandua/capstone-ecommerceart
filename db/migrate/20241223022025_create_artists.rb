class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :artist_name
      t.string :artist_image
      t.string :artist_bio

      t.timestamps
    end
  end
end
