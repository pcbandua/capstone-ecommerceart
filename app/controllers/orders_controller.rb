class OrdersController < ApplicationController
  def index
    @order = Order.where(user_id: current_user.id)
    render :index
  end

  def create
  
    # find the carted products for the current user
    @carted_products = CartedProduct.where(status: "carted", user_id: current_user.id)
  
# calculate subtotal for all products in the cart by finding the quanty and price of each product and multiplying them together.
    calculated_subtotal = 0
    @carted_products.each do |cp|
      calculated_subtotal += cp.quantity * cp.product.price
    end

    # find tax by multiplying the subtotal by the tax rate, the nadding the result to the subtotal
    tax_rate = .103
    calculated_tax = calculated_subtotal * tax_rate
    calculated_total = calculated_subtotal + calculated_tax

    # create new order
    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal.to_s,
      tax: calculated_tax,
      total: calculated_total,
    )
    @order.save!

    # go back to shopping cart, change the order id and the status
    @carted_products.each do |cp|
      cp.order_id = @order.id
      cp.status = "purchased"
      cp.save
    end
    render :show
  end

  def show
    @order = Order.find_by(id: params[:id])
    if @order.user_id == current_user.id
      render :show

    else
      render json: {}, status: :unnauthorized
    end
  end

end
