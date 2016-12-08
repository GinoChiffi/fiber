class CreateShops < ActiveRecord::Migration[5.0]
      def change
      create_table :shops do |t|

      t.string :name
      t.string :city
      t.string :description
      t.string :image_shop

      t.timestamps
    end
  end
end
