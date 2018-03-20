class Product < ApplicationRecord
  has_and_belongs_to_many :orders
  has_many :images
  belongs_to :category
end
