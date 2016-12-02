class Size < ApplicationRecord
  has_many :items, through: :item_sizes

  # validates :type, presence: true
  validates :selection, presence: true
end

