class CreateTableMemoServices < ActiveRecord::Migration[6.0]
  def change
    create_table :memo_services do |t|
      t.integer "memo_id"
      t.integer "service_id"
    end
  end
end
