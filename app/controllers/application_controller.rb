class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :add_menu

  def add_menu
    @categories = Category.all
  end

end
