class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.integer :artist_id
      t.string :artpiece_name
      t.string :image_url
      t.integer :inventory
      t.string :size
      t.integer :price

      t.timestamps
    end
  end
end
