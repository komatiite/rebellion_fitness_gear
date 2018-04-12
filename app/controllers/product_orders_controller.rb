class ProductOrdersController < ApplicationController
  def create
    @order = current_order
    @product_order = @order.product_orders.new(product_orders_params)
    @order.save!
    session[:order_id] = @order.id

    if session[:customer_id].present?
      update_order_fields
    end

    redirect_to request.referrer
  end

  def update
    @order = current_order
    @product_order = @order.product_orders.find(params[:id])
    @product_order.update_attributes(product_orders_params)
    @product_orders = @order.product_orders
    redirect_to request.referrer
  end

  def destroy
    @order = current_order
    @product_order = @order.product_orders.find(params[:id])
    @product_order.destroy!
    @product_orders = @order.product_orders
    redirect_to request.referrer
  end

  private
  def product_orders_params
    params.require(:product_order).permit(:quantity, :product_id)
  end

  def update_order_fields
    @customer = Customer.find(session[:customer_id])

    current_order.update_attribute(:customer, @customer)
    current_order.update_attribute(:province, @customer.province)
    current_order.update_attribute(:gst, @customer.province.gst)
    current_order.update_attribute(:pst, @customer.province.pst)
  end
end
