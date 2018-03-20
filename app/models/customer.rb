class Customer < ApplicationRecord
  has_many :orders

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :phone, presence: true
  validates :phone, numericality: { only_integer: true }
  validates :address, presence: true
  validates :city, presence: true
  validates :province, presence: true
  validates :postalcode, presence: true
end
