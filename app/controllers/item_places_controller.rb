class ItemPlacesController < ApplicationController
    def index
        @item_places = ItemPlace.all
    end

    def new
        @item_place = ItemPlace.new
    end
    def create
        @item_place = ItemPlace.create item_place_params
        if @item_place.save
            redirect_to items_path, notice: 'Місце створено'
        else
            render :new
        end
    end
    private
    def item_place_params
        params.require(:item_place).permit(:name)
    end
end
