class AddAttributesToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profile_pic, :string
    add_column :users, :user_name, :string
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :url_address, :string
    add_column :users, :gender, :string
    add_column :users, :birth_date, :datetime
    add_column :users, :shoe_size, :string
    add_column :users, :top_size, :string
    add_column :users, :bottom_size, :string
    add_column :users, :search_radius, :integer
  end
end
