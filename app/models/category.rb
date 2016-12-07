class Category < ApplicationRecord
  has_many :subcategories
  has_many :sizes
  has_many :items, through: :subcategories

  validates :name, presence: true, uniqueness: true
end
