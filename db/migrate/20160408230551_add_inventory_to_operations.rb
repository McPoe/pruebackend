class AddInventoryToOperations < ActiveRecord::Migration
  def change
    add_reference :operations, :inventory, index: true, foreign_key: true
  end
end
