class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    item.create(item_params)
  end

  private
  def item_params
    params.require(:item).permit(:name, :explanation, :price, :user)
  end

end
