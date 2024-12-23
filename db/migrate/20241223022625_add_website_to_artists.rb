class AddWebsiteToArtists < ActiveRecord::Migration[7.1]
  def change
    add_column :artists, :artist_website, :string
  end
end
