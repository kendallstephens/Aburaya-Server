class OrderSerializer < ActiveModel::Serializer
  attributes :id, :complete, :order_items, :items
end
