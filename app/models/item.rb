class Item < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  has_many :item_likes
  has_many :item_sizes
  has_many :item_colors
  has_many :item_subcategories

  has_one :order
  has_many :colors, through: :item_colors
  has_many :sizes, through: :item_sizes
  has_many :subcategories, through: :item_subcategories

  validates :name, presence: true
  validates :price, presence: true, :numericality => { :greater_than_or_equal_to => 0 }
  validates :description, presence: true
  validates :gender, presence: true
  validates :user_id, presence: true
  validates :brand_id, presence: true
end
