class Color < ApplicationRecord
  has_many :item_colors
  has_many :items, through: :item_colors

  validates :name, presence: true, uniqueness: true
end
