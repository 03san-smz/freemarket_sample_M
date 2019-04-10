class ItemsController < ApplicationController

  def index
    @item = "プログラミングなう"
  end

  def show
    @item = "プログラミングなう"
    @items = "item-1"
  end

  def new
    @item = Item.new
  end

end
