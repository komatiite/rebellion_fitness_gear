class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :add_menu
  before_action :set_search_category
  helper_method :current_order
  helper_method :current_customer

  def set_search_category
    if session[:search_category].nil?
      session[:search_category] = 11
    end
  end

  def add_menu
    @categories = Category.all
  end

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new
    end
  end

  def current_customer
    if session[:customer_id].present?
      @current_customer = Customer.find(session[:customer_id])
    end
  end

end
