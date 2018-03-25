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

  def add
  end

  def discard
  end

  def buy
  end
end
