class CreateConstructions < ActiveRecord::Migration[6.0]
  def change
    create_table :constructions do |t|
      t.string :name
      t.string :design
      t.string :area
      t.string :built_year
      t.integer :type_id
      t.text :introduction
      t.string :image

      t.timestamps
    end
  end
end
