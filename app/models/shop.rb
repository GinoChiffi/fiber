class Shop < ApplicationRecord
  has_many :items

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true
  validates :image_shop, presence: true
  validates :description, presence: true
end
