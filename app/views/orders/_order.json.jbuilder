  json.id order.id
  json.user_id order.user_id
  json.subtotal order.subtotal
  json.tax order.tax
  json.total order.total
  json.carted_products order.carted_products.map do |historical_order| 
  json.id           historical_order.id
  json.price        historical_order.product.price

  json.product_artpiece_name historical_order.product.artpiece_name
  end

  json.created_at order.created_at
  json.updated_at order.updated_at