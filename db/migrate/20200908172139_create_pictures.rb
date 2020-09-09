class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.integer :construction_id
      t.string :pictures

      t.timestamps
    end
  end
end
