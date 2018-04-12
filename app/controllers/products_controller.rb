class ProductsController < ApplicationController
  def index
    @products = Product.all.page(params[:page]).per(5)
  end

  def show
    @product = Product.find(params[:id])
    @product_order = current_order.product_orders.new
  end

  def category
    @products = Product.where(:category => params[:id])
  end

  def main
    @sale_products = Product.where(:sale => true)
    @new_products = Product.where(:new => true)
  end
end
