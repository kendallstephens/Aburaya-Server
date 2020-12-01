class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :orders, :items

  def orders
    object.current_order[0][:id]
  end

  # def order_items
  #   object.current_cart
  # end





end
