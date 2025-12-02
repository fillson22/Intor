class ItemsController < ApplicationController
  def index
    @items = Item.all
    @item_places = ItemPlace.all
    @item_storages = ItemStorage.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create item_params
    if @item.save
      redirect_to items_path, notice: 'Річ створено'
    else
      render :new
    end
  end

private

  def item_params
    params.require(:item).permit(:name, :quantity, :history)
  end

end
