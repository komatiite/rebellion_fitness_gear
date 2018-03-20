class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :password, presence: true
  validates :firstname, presence: true
  validates :lastname, presence: true
end
