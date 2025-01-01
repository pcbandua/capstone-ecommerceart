class OrdersController < ApplicationController
  def create
    @order = Order.create(
      user_id: params[:user_id],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    render :show
  end
end
