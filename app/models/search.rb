class Search < ApplicationRecord

  def search_items

    items = Item.all

    items = items.where(["name Like ?", "%#{name}%"]) if name.present?
    items = items.where(["price >= ?", min_price]) if min_price.present?
    items = items.where(["price <= ?", max_price]) if max_price.present?
    items = items.where(["gender Like ?", gender]) if gender.present?

    return items
  end

end
