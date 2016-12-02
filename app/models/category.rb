class Category < ApplicationRecord
  has_many :subcategories
  has_many :size

  validates :name, presence: true, uniqueness: true
end
