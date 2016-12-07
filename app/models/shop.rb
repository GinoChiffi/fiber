class Shop < ApplicationRecord
  has_many :items

  validates :name, presence: true, uniqueness: { scope: :city }
  validates :city, presence: true
end
