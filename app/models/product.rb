class Product < ApplicationRecord
  has_many :product_orders
  belongs_to :category

  validates :sku, presence: true
  validates :name, presence: true
  validates :quantity, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :price, presence: true
  validates :price, numericality: { only_float: true }

  mount_uploader :image, ImageUploader

  def self.search search_term
    return scoped unless search_term.present?
    where(['name LIKE ? OR description LIKE ?', "%#{search_term}%", "%#{search_term}%"])
  end

  def self.category_search search_term, category_term
    return scoped unless search_term.present?
    where(['category_id = ? AND (name LIKE ? OR description LIKE ?)', "#{category_term}", "%#{search_term}%", "%#{search_term}%"])
  end
end
