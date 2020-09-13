class AddColumnFilterToConstruction < ActiveRecord::Migration[6.0]
  def change
    add_column :constructions, :filter, :string
  end
end
