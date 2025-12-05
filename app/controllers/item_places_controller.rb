class ItemPlacesController < ApplicationController
    before_action :find_item_place, only: [:edit, :update, :destroy]
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
    def edit; end
    
    def update
        if @item_place.update item_place_params
            redirect_to items_path, notice: 'Місце оновлено'
        else
            render :edit
        end
    end

    def destroy
        if @item_place.destroy
            redirect_to items_path, notice: 'Місце видалено'
        else
            redirect_to items_path, alert: 'Помилка видалення місця'
        end
    end

private

    def item_place_params
        params.require(:item_place).permit(:name)
    end

    def find_item_place
        @item_place = ItemPlace.find params[:id]
    end
end
