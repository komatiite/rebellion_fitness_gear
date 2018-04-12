class SearchController < ApplicationController
  def index
    session[:search_category] = params[:id][:category_term]

    if params[:id][:category_term] == '11'
      @products = Product.search(params[:search_term]).all
    else
      Rails.logger.debug("specific category: #{params[:id][:category_term]}")
      @products = Product.category_search(params[:search_term], params[:id][:category_term]).all
    end

    @category = Category.find(params[:id][:category_term])
    @search_term = params[:search_term]
  end
end
