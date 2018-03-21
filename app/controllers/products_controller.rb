class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def view
    @product = Product.find(params[:id])
  end

  def add
  end

  def discard
  end

  def buy
  end
end
