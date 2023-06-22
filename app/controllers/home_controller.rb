class HomeController < ApplicationController
  
  layout 'home_index'

  def  index
    @categories = Category.all
  end

end
