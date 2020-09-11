class AddImagesToConstructions < ActiveRecord::Migration[6.0]
  def change
    add_column :constructions, :image_2, :string
    add_column :constructions, :image_3, :string
    add_column :constructions, :image_4, :string
    add_column :constructions, :image_5, :string
    add_column :constructions, :image_6, :string
    add_column :constructions, :image_7, :string
    add_column :constructions, :image_8, :string

  end
end
