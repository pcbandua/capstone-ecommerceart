json.extract! carted_product, :id, :created_at, :updated_at
json.url carted_product_url(carted_product, format: :json)


  json.id carted_product.id
  json.user_id carted_product.user_id
  json.product_id carted_product.product_id
  json.quantity carted_product.quantity
json.order_id carted_product.order_id
json.status carted_product.status
  json.created_at carted_product.created_at
  json.updated_at carted_product.updated_at