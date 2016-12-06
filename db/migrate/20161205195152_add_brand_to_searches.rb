class AddBrandToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :brand, :string
  end
end
