class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.references :item
      t.references :order

      t.timestamps
    end
    add_index :positions, :item_id
    add_index :positions, :order_id
  end
end
