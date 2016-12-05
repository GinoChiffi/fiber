class CreateSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :searches do |t|
      t.string :name
      t.string :category
      t.float :min_price
      t.string :max_price_float
      t.string :gender
      t.string :subcategory

      t.timestamps
    end
  end
end
