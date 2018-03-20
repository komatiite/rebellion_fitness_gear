class Province < ApplicationRecord
  has_many :orders

  validates :code, presence: true
  validates :gst, presence: true
  validates :gst, numericality: { only_float: true }
  validates :pst, presence: true
  validates :pst, numericality: { only_float: true }
end
