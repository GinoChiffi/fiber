class Color < ApplicationRecord
  has_many :items, through: :item_colors

  validates :name, presence: true, unqueness: true
end
