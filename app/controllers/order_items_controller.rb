class OrderItemsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create]

    def index 
        order_items = OrderItem.all 
        render json: order_items
    end

    def show
        order_item = OrderItem.find(params[:id])
        render json: order_item
    end


    def create
        order_item = OrderItem.create(order_item_params)
        render json: order_item
    end

    private

    def order_item_params
        params.permit(:item_id, :order_id)
    end
end
