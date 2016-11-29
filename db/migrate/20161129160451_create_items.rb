class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :tumbnail_img
      t.float :price
      t.string :description
      t.references :user, foreign_key: true
      t.string :gender

      t.timestamps
    end
  end
end
