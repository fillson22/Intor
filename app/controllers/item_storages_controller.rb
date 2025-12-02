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
private
    def item_storage_params
        params.require(:item_storage).permit(:item_id, :item_place_id)
    end
end
