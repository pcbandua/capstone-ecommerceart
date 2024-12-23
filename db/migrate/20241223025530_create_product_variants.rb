class CreateProductVariants < ActiveRecord::Migration[7.1]
  def change
    create_table :product_variants do |t|
      t.integer :product_id
      t.string :print_size
      t.integer :price

      t.timestamps
    end
  end
end
