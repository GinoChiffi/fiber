class ItemSubcategory < ApplicationRecord
  belongs_to :subcategory
  belongs_to :item
end
