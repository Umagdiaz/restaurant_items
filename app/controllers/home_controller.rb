class HomeController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  
  layout 'home_index'

  def index
  end

  def  index
    @categories = Category.all
  end

end
