class CartedProductsController < ApplicationController
  def create
    @cartedproduct = CartedProduct.create(
      user_id: params[:user_id],
      product_id: params[product_id],
      quantity: params[quantity],
      order_id: params[order_id],
      status: params[status],
    )
    render :show
  end
end
