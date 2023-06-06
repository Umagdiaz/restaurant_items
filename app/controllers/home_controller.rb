class HomeController < ApplicationController
  def index
  end

  def  index
    @categories = Category.all
  end

end
