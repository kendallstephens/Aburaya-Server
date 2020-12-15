class ChargesController < ApplicationController
    skip_before_action :authorized, only: [:create]

   



    def create
      byebug
   
      Stripe.api_key = ENV['STRIPE_SECRET_KEY']

      find_items = User.all.filter{|user| user.id === params[:checkout_user_id] }
      items = find_items.map{ |user| user.items}
      amount = 5 * 100
      payment_method = params[:payment_method]
     
      intent = Stripe::PaymentIntent.create({
          payment_method: payment_method,
          amount: amount.to_i,
          currency: 'usd',
          confirmation_method: 'automatic',
          metadata: {integration_check: 'accept_a_payment'},
        })
        render json: {client_secret: intent.client_secret}
      end


  
       

end
