class CategoriesController < ApplicationController

  def show
    if params[:id] == '11'
      redirect_to index_page_path
    else
      @products = Product.where(:category => params[:id]).page(params[:page]).per(5)
      @category = Category.find(params[:id])
    end
  end

end
