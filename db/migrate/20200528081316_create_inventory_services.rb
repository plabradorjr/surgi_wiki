class CreateInventoryServices < ActiveRecord::Migration[6.0]
  def change
    create_table :inventory_services do |t|
      t.integer :inventory_id
      t.integer :service_id
    end
  end
end
