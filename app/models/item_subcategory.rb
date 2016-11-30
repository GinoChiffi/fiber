class ItemSubcategory < ApplicationRecord
  belongs_to :subcategory
  belongs_to :item

  validates :subcategory_id, presence: true
  validates :item_id, presence: true
end
