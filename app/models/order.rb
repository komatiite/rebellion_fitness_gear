class Order < ApplicationRecord
  has_and_belongs_to_many :products
  belongs_to :customer
  belongs_to :province
end
