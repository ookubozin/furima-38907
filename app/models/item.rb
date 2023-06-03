class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :delivery_charge
  belongs_to :delivery_time
  belongs_to :prefecture
  belongs_to :status

  validates :name, presence: true
  validates :explanation, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 9_999_999 },format: { with: /\A[0-9]+\z/ }
  
  validates :image, presence: true
  validates :category_id, presence: true
  validates :delivery_charge_id, presence: true
  validates :delivery_time_id, presence: true
  validates :prefecture_id, presence: true
  validates :status_id, presence: true
end
