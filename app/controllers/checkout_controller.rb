class CheckoutController < ApplicationController
  def index
    if !session[:customer_id].nil?
      finalize_order
      redirect_to invoice_path
    else
      redirect_to login_page_path
    end
  end

  def invoice
    @order = current_order
    @customer = Customer.find(session[:customer_id])
    @product_orders = current_order.product_orders
  end

  private

  def finalize_order
    @tax_rate = 1 + (current_order.province.gst + current_order.province.pst)
    @subtotal = current_order.product_orders.sum(:total_price)
    @total = @subtotal * @tax_rate

    current_order.update_attribute(:total_price, @total)
  end
end
