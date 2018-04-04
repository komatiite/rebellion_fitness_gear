class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def category
    @products = Product.where(:category => params[:id])
  end

  def main
    @sale_products = Product.where(:sale => true)
    @new_products = Product.where(:new => true)
  end
end
