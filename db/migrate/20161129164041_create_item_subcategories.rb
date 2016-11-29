class CreateItemSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :item_subcategories do |t|
      t.references :subcategory, foreign_key: true
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
