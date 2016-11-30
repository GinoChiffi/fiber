class ItemColor < ApplicationRecord
  belongs_to :color
  belongs_to :item

  validates :color_id, presence: true
  validates :item_id, presence: true
end
