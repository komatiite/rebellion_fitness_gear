class Image < ApplicationRecord
  belongs_to :product

  validates :filename, presence: true
  validates :default, presence: true
  validates :product_id, presence: true
end
