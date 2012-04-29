class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.references :cart
      t.references :item

      t.timestamps
    end
    add_index :purchases, :cart_id
    add_index :purchases, :item_id
  end
end
