class User < ApplicationRecord
    has_many :orders
    has_many :order_items, through: :orders
    has_many :items, through: :order_items

    has_secure_password
    validates :email, uniqueness: { case_sensitive: false }
    validates :phone_number, length: { is: 10 }

    def current_order
      self.orders.select do |o|
        o[:complete] != true
      end
    end

    def current_cart
      byebug
      self.order_items.select do |i|
        i[:order_id] == order[:id]
      end
    end

    # def paid_orders
    #     self.orders.select do |o|
    #       o.complete == true
    #   end 
    # end
end
