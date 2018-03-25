class CategoriesController < ApplicationController

  def show
    @products = Product.where(:category => params[:id])
    @category = Category.find(params[:id])
  end


end
