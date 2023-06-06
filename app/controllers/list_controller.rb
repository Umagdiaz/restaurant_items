class ListController < ApplicationController
  def index
  end

  def index
    @items = Item.all
  end
end
