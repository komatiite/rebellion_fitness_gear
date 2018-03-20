class Order < ApplicationRecord
  has_and_belongs_to_many :products
  belongs_to :customer
  belongs_to :province

  validates :date, presence: true
  validates :status, presence: true
  validates :gst, presence: true
  validates :gst, only_float: true
  validates :pst, presence: true
  validates :pst, only_float: true
  validates :customer_id, presence: true
  validates :customer_id, only_integer: true
  validates :province_id, presence: true
  validates :province_id, only_integer: true
end
