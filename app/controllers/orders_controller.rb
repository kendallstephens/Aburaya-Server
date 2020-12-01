class OrdersController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create]

    def index 
        orders = Order.all 
        render json: orders
    end

    def show
        order = Order.find(params[:id])
        render json: order
    end 


    def create
        order = Order.create(order_params)

        if order.valid?
            render json: order
        else 
            render json: {error: "Your order did not go through, please try again"}
        end 
    end

    def update 
        order = Order.find(params[:id])
        order.update(order_params)

        if order.valid?
            render json: order
        else 
            render json: {error: "Your order was not updated, please try again"}
        end 
    end

    private 

    def order_params
        params.permit(:user_id, :complete)
    end 


end
