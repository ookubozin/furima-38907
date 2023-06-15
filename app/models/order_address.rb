class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_code, :prefecture_id , :municipalities, :house_number, :building_name, :phone_number, :order_id, :user_id, :item_id

  with_options presence: true do
    validates :post_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :municipalities
    validates :house_number
    validates :phone_number 
    validates :order_id
    validates :user_id
    validates :item_id
  end
  validates :prefecture_id, numericality: {other_than: 0, message: "can't be blank"}

  def save
    order = Order.create(user_id: user_id: , item_id: item_id)
    Address.create(post_code: post_code, prefecture_id: prefecture_id, municipalities: municipalities, house_number: house_number, building_name: building_name, phone_number: phone_number, order_id: order.id)
  end
end