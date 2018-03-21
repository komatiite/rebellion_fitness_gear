class Province < ApplicationRecord
  has_many :orders
  has_many :customers

  validates :code, presence: true
  validates :gst, presence: true
  validates :gst, numericality: { only_float: true }
  validates :pst, presence: true
  validates :pst, numericality: { only_float: true }

  def display_name
    code
  end
end
