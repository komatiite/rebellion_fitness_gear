class Product < ApplicationRecord
  has_and_belongs_to_many :orders
  has_many :images
  belongs_to :category

  validates :sku, presence: true
  validates :name, presence: true
  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :price, presence: true
  validates :price, numericality: { only_float: true }
end
