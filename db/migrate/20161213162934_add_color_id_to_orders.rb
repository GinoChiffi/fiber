class AddColorIdToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :color_id, :integer
  end
end
