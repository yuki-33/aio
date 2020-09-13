class ChangeColumnDataTypeToFilterId < ActiveRecord::Migration[6.0]
  def change
    change_column :constructions, :filter_id, :integer
  end
end
