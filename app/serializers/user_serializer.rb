class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :orders
  has_many :order_items


  def orders
    if object.current_order[0]
    return object.current_order[0][:id]
    else
      return nil
    end
  end

  # def order_items
  #  object.current_cart
  # end





end
