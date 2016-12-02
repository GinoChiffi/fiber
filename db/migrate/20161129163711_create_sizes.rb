class CreateSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :sizes do |t|
      t.references :category
      t.string :selection

      t.timestamps
    end
  end
end
