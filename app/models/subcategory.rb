class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :item_subcategories
  has_many :items, through: :item_subcategories

  validates :name, presence: true, uniqueness: true
  validates :category_id, presence: true
end
