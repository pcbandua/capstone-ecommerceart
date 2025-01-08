
json.id product.id
json.image_url product.image_url
json.artpiece_name product.artpiece_name
json.artist_id product.artist_id
json.inventory product.inventory
json.size product.size
json.price product.price
json.description product.description
json.created_at product.created_at
json.updated_at product.updated_at

json.product_variants product.product_variants.each do |variant| 
 json.price variant.price
 json.print_size variant.print_size
end

