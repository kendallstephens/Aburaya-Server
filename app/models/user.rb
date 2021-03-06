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

end
