class RemoveFilterToConstructions < ActiveRecord::Migration[6.0]
  def change
    remove_column :constructions, :filter_id, :string
  end
end
