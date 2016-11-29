class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.string :status
      t.datetime :pick_up_date

      t.timestamps
    end
  end
end
