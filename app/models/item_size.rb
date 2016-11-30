class ItemSize < ApplicationRecord
  belongs_to :size
  belongs_to :item

  validates :size_id, presence: true
  validates :item_id, presence: true
end
