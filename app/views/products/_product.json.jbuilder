
json.id product.id
json.image_url product.image_url
json.inventory product.inventory
json.description product.description
json.created_at product.created_at
json.updated_at product.updated_at

json.product_variants product.product_variants.each do |variant| 
 json.price variant.price
 json.print_size variant.print_size
end

