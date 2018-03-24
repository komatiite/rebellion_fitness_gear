class About < ApplicationRecord
  validates :title, presence: true
  validates :tagline, presence: true
  validates :description, presence: true
  validates :image, presence: true

  mount_uploader :image, AboutUploader
end
