class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone_number, :orders, :order_items

  def orders
    if object.current_order[0]
    return object.current_order[0][:id]
    else
      return nil
    end
  end

  def order_items
   if object.current_order[0]
    return object.current_order[0].order_items.map {|i| {id: i.id, item: i.item}}
   else 
    return []
   end
  end





end
