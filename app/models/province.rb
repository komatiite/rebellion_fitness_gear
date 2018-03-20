class Province < ApplicationRecord
  has_many :orders

  validates :code, presence: true
  validates :gst, presence: true
  validates :gst, only_float: true
  validates :pst, presence: true
  validates :pst, only_float: true
end
