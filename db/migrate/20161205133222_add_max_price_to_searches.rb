class AddMaxPriceToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :max_price, :float
  end
end
