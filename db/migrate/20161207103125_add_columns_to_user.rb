class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :jacket_size, :string
    add_column :users, :underwear_size, :string
    add_column :users, :accessoire_size, :string
    add_column :users, :jewelry_size, :string
    add_column :users, :dress_size, :string
    add_column :users, :swimsuit_size, :string
  end
end
