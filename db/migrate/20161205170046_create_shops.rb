class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :image_shop
      t.string :description

      t.timestamps
    end
  end
end