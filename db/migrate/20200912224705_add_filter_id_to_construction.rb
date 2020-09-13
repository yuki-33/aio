class AddFilterIdToConstruction < ActiveRecord::Migration[6.0]
  def change
    add_column :constructions, :filter_id, :integer
  end
end
