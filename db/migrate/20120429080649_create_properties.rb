class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.text :text
      t.references :item

      t.timestamps
    end
    add_index :properties, :item_id
  end
end
