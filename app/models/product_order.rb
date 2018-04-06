class ProductOrder < ApplicationRecord
  belongs_to :product
  belongs_to :order
  before_save :set_prices

  #validates :product_id, presence: true
  #validates :order_id, presence: true
  #validates :quantity, presence: true, numericality: { only_integer: true, greater_than: 0 }

  def price
    if persisted?
      self[:price]
    else
      product.price
    end
  end

  def total_price
    price * quantity
  end

  private

  def set_prices
    self[:price] = price
    self[:total_price] = quantity * self[:price]
  end

end
