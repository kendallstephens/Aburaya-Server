class ChargesController < ApplicationController
    skip_before_action :authorized, only: [:create]

    Stripe.api_key = ENV["STRIPE_SECRET_KEY"]

    def new 
    end

    def create
        # Amount in cents
        @amount = 500
      
        customer = Stripe::Customer.create({
          email: params[:stripeEmail],
          source: params[:stripeToken],
        })
      
        charge = Stripe::Charge.create({
          customer: customer.id,
          amount: @amount,
          description: 'Rails Stripe customer',
          currency: 'usd',
        #   :source => params[:token]
        })
      
    #   rescue Stripe::CardError => e
    #     flash[:error] = e.message
    #     redirect_to new_charge_path
    #   end
    end
  
end
