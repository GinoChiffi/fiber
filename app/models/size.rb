class Size < ApplicationRecord
  has_many :items, through: :item_sizes
  belongs_to :category

  validates :selection, presence: true
end

