class ItemStoragesController < ApplicationController
    def index
        @item_storages = ItemStorage.all
    end
    def new
        @item_storage = ItemStorage.new
    end
    def create
        @item_storage = ItemStorage.create item_storage_params
        if @item_storage.save
            redirect_to items_path, notice: 'Річ успішно додана до сховища'
        else
            render :new
        end
    end
    def edit
        @item_storage = ItemStorage.find params[:id]
    end
    def update
        @item_storage = ItemStorage.find params[:id]
        if @item_storage.update item_storage_params
            redirect_to items_path, notice: 'Річ перекладена в інше місце сховища'
        else
            render :edit
        end
    end
private
    def item_storage_params
        params.require(:item_storage).permit(:item_id, :item_place_id)
    end
end
