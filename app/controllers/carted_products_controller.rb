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

  def update
    @cartedproduct = CartedProduct.find_by(id: params[:id])
    @cartedproduct.update(
      user_id: params[:user_id] || @cartedproduct.user_id,
      product_id: params[:product_id] || @cartedproduct.product_id,
      quantity: params[:quantity] || @cartedproduct.quantity,
      order_id: params[:order_id] || @cartedproduct.order_id,
      status: params[:status] || @cartedproduct.status,
    )
    render :show
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.destroy
    render json: { message: "The product has been successfuly deleted" }
  end
end
