class AddImageColumnToConstructions < ActiveRecord::Migration[6.0]
  def change
    add_column :constructions, :image_9, :string
    add_column :constructions, :image_10, :string
  end
end
