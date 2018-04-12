class CategoriesController < ApplicationController

  def show
    #@products = Product.order("name").page(params[:page]).per(5)
    #@products = Product.where(:category => params[:id])
    @products = Product.where(:category => params[:id]).page(params[:page]).per(5)
    @category = Category.find(params[:id])
  end


end
