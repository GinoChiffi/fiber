class ItemColor < ApplicationRecord
  belongs_to :color
  belongs_to :item
end
