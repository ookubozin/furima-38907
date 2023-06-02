class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create

  end

  private
  def item_params
    params.require(:item).permit(:name, :explanation, :price, :user)
  end

  def item_image_params
    params.require(:item).permit(:content, :image).merge(user_id: current_user.id)
  end
end
