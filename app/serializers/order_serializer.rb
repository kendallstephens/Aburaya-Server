class OrderSerializer < ActiveModel::Serializer
  attributes :id, order_items, :items
end
