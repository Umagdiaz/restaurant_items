class ListController < ApplicationController
  
  def index
    @items = Item.all
  end
  
end
