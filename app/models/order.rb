class Order < ApplicationRecord
  has_many :product_orders
  belongs_to :customer, optional: true
  belongs_to :province, optional: true
  before_validation :set_customer_id
  before_validation :set_default_province
  before_validation :set_order_status
  before_validation :set_order_date

  validates :date, presence: true
  validates :status, presence: true
  #validates :gst, presence: true
  validates :gst, numericality: { only_float: true }, allow_blank: true
  #validates :pst, presence: true
  validates :pst, numericality: { only_float: true }, allow_blank: true
  #validates :customer_id, presence: true
  validates :customer_id, numericality: { only_integer: true }
  #validates :province_id, presence: true
  validates :province_id, numericality: { only_integer: true }

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
