class AddFieldsToItems < ActiveRecord::Migration
  def change
    add_column :items, :price_category_id, :string
    add_column :items, :price_description, :string
    add_column :items, :price_offer_id, :string
  end
end
