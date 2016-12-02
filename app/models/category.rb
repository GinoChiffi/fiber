class Category < ApplicationRecord
  has_many :subcategories
  has_many :sizes

  validates :name, presence: true, uniqueness: true
end
