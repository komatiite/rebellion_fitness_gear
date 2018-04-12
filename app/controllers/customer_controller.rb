class CustomerController < ApplicationController

  def index

  end

  def login
    @customer = Customer.find_by_email(params[:email])

    if @customer.nil?
      redirect_to sign_up_path
    else
      if @customer.password == params[:password]
        session[:customer_id] = @customer.id
        session[:login_error] = nil

        if session[:order_id].nil?
          set_order_cookie
        else
          update_order_fields(@customer)
        end

        redirect_to main_page_path
      else
        session[:login_error] = true
        redirect_to login_page_path
      end
    end
  end

  def destroy
    session[:customer_id] = nil
    session[:order_id] = nil
    redirect_to main_page_path
  end

  def new
    @customer = Customer.new
    @provinces = Province.all
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save!
    session[:customer_id] = @customer.id

    update_order_fields(@customer)

    if session[:order_id].present?
      redirect_to checkout_page_path
    else
      redirect_to main_page_path
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:firstname,
                                     :lastname,
                                     :email,
                                     :password,
                                     :phone,
                                     :address,
                                     :city,
                                     :province_id,
                                     :postalcode)
  end

  def update_order_fields(customer)
    current_order.update_attribute(:customer, customer)
    current_order.update_attribute(:province, customer.province)
    current_order.update_attribute(:gst, customer.province.gst)
    current_order.update_attribute(:pst, customer.province.pst)
  end

  def set_order_cookie
    if Order.find_by_customer_id(session[:customer_id]).present?
      @order = Order.find_by_customer_id(session[:customer_id])
      session[:order_id] = @order.id
    end
  end
end

