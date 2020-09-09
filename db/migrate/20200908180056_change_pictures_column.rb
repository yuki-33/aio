class ChangePicturesColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :pictures, :pictures, :picture
  end
end
