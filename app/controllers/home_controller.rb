class HomeController < ApplicationController
  layout 'home_index'

  def index
  end

  def  index
    @categories = Category.all
  end

end
