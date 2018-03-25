class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :email, presence: true
  validates :comment, presence: true
end
