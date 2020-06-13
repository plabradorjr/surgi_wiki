class AddPictureToInventories < ActiveRecord::Migration[6.0]
  def change
    add_column :inventories, :picture, :string
  end
end
