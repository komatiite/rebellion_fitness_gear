class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :add_menu
  helper_method :current_order

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

end
