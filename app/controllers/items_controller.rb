class ItemsController < ApplicationController
  before_action :find_item, only: [:edit, :update, :destroy]

  def index
    @items = Item.all
    @item_places = ItemPlace.all
    @item_storages = ItemStorage.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new item_params
    if @item.save
      redirect_to items_path, notice: 'Річ створено'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end
  
  def update
    if @item.update item_params
      redirect_to items_path, notice: 'Річ оновлено'
    else
      render :edit
    end
  end

  def destroy
    if @item.destroy
      redirect_to items_path, notice: 'Річ видалено'
    else
      redirect_to items_path, alert: 'Не вдалося видалити річ'
    end
  end

  def search
  @item_places = ItemPlace.all
  @query = params[:q]
  @items = Item.where("name LIKE ?", "%#{@query}%")
end


private

  def item_params
    params.require(:item).permit(:name, :quantity, :history)
  end

  def find_item
    @item = Item.find params[:id]
  end

end
