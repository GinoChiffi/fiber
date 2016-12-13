class Size < ApplicationRecord
  has_many :item_sizes
  has_many :items, through: :item_sizes
  belongs_to :category

  validates :value, presence: true
end

