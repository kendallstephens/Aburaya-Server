class ChargesController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def create
      Stripe.api_key = ENV['stripe_api_key']

      find_items = User.all.filter{|user| user.id === params[:checkout_user_id] }
      items = find_items.map{ |user| user.items}
      amount = items.map{|item| item.price}.sum * 100
     
      intent = Stripe::PaymentIntent.create({
          amount: amount.to_i,
          currency: 'usd',
          metadata: {integration_check: 'accept_a_payment'},
        })
        render json: {client_secret: intent.client_secret}
  end
end
