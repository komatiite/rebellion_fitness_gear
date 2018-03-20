class Order < ApplicationRecord
  has_and_belongs_to_many :products
  belongs_to :customer
  belongs_to :province

  validates :date, presence: true
  validates :status, presence: true
  validates :gst, presence: true
  validates :gst, numericality: { only_float: true }
  validates :pst, presence: true
  validates :pst, numericality: { only_float: true }
  validates :customer_id, presence: true
  validates :customer_id, numericality: { only_integer: true }
  validates :province_id, presence: true
  validates :province_id, numericality: { only_integer: true }
end
