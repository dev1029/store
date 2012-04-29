class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :item

      t.timestamps
    end
    add_index :images, :item_id
  end
end
