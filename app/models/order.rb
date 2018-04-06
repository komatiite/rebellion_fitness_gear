class Order < ApplicationRecord
  has_many :product_orders
  belongs_to :customer, optional: true
  belongs_to :province, optional: true
  before_create :set_customer_id
  before_create :set_default_province
  before_create :set_order_status
  before_create :set_order_date

  private

  def set_order_status
    self.status = 'In Progress'
  end

  def set_order_date
    self.date = Time.now.strftime("%d/%m/%Y %H:%M")
  end

  def set_customer_id
    self.customer = Customer.find(1)
  end

  def set_default_province
    self.province = Province.find(1)
  end
end
