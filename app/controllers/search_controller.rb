class SearchController < ApplicationController
  def index
    @products = Product.search(params[:search_term]).all
  end
end
