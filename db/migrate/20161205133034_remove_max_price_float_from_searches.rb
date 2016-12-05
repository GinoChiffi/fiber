class RemoveMaxPriceFloatFromSearches < ActiveRecord::Migration[5.0]
  def change
    remove_column :searches, :max_price_float, :string
  end
end
