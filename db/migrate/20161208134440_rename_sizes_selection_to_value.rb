class RenameSizesSelectionToValue < ActiveRecord::Migration[5.0]
  def change
    rename_column :sizes, :selection, :value
  end
end
