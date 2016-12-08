class Shop < ApplicationRecord
  has_many :items

  validates :name, presence: true, uniqueness: true
  validates :city, presence: true
  # validates :image_shop, presence: true
  # validates :description, presence: true
end
