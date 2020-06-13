class AddColumnToInventories < ActiveRecord::Migration[6.0]
  def change
    add_column :inventories, :info, :string
  end
end
