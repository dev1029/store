# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120509114054) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "ancestry"
  end

  add_index "categories", ["ancestry"], :name => "index_categories_on_ancestry"

  create_table "images", :force => true do |t|
    t.integer  "item_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "file_uid"
    t.string   "file_name"
  end

  add_index "images", ["item_id"], :name => "index_images_on_item_id"

  create_table "items", :force => true do |t|
    t.string   "vendor"
    t.string   "model"
    t.integer  "category_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "price_category_id"
    t.string   "price_description"
    t.string   "price_offer_id"
  end

  add_index "items", ["category_id"], :name => "index_items_on_category_id"

  create_table "orders", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "positions", :force => true do |t|
    t.integer  "item_id"
    t.integer  "order_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "positions", ["item_id"], :name => "index_positions_on_item_id"
  add_index "positions", ["order_id"], :name => "index_positions_on_order_id"

  create_table "properties", :force => true do |t|
    t.text     "text"
    t.integer  "item_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "properties", ["item_id"], :name => "index_properties_on_item_id"

  create_table "purchases", :force => true do |t|
    t.integer  "cart_id"
    t.integer  "item_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "purchases", ["cart_id"], :name => "index_purchases_on_cart_id"
  add_index "purchases", ["item_id"], :name => "index_purchases_on_item_id"

end
