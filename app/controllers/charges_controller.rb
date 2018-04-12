class ChargesController < ApplicationController
  def new
  end

  def create
    @amount = (Order.find(session[:order_id]).total_price.to_f * 100).round

    customer = Stripe::Customer.create(
        :email => params[:stripeEmail],
        :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
        :customer    => customer.id,
        :amount      => @amount,
        :description => 'Rails Stripe customer',
        :currency    => 'cad'
    )

    finalize_payment(charge)

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

  def finalize_payment(charge)
    current_order.update_attribute(:stripe_customer_id, charge['customer'])
    current_order.update_attribute(:stripe_charge_id, charge['id'])
    current_order.update_attribute(:status, 'Paid')

    session[:order_id] = nil
  end
end
