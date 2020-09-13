class RenameColumnFilterIdToConstruction < ActiveRecord::Migration[6.0]
  def change
    rename_column :constructions, :integer, :filter_id
  end
end
