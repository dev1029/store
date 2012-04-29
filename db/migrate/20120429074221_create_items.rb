class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :vendor
      t.string :model
      t.references :category

      t.timestamps
    end
    add_index :items, :category_id
  end
end
