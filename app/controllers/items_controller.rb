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

  def message_params
    params.require(:item).permit(:content, :image).merge(user_id: current_user.id)
  end
end
