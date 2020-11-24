class ItemsController < ApplicationController
    # skip_before_action :authorized, only: [:create]

    def index
        items = Item.all
        render json: items
    end

    def show
        item = Item.find(params[:id])
        render json: item
    end
    
end
