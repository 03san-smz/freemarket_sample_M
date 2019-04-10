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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20190404090847) do

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "product_name",        limit: 65535
    t.integer  "price"
    t.text     "product_description", limit: 65535
    t.integer  "category_id"
    t.integer  "size_id"
    t.string   "product_state"
    t.string   "trade_state"
    t.string   "listing_date"
    t.integer  "brand_id"
    t.integer  "delivery_id"
    t.integer  "image_id"
    t.integer  "comment_id"
    t.integer  "user_id"
    t.integer  "prefecture_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["brand_id"], name: "index_items_on_brand_id", using: :btree
    t.index ["category_id"], name: "index_items_on_category_id", using: :btree
    t.index ["comment_id"], name: "index_items_on_comment_id", using: :btree
    t.index ["delivery_id"], name: "index_items_on_delivery_id", using: :btree
    t.index ["image_id"], name: "index_items_on_image_id", using: :btree
    t.index ["size_id"], name: "index_items_on_size_id", using: :btree
    t.index ["user_id"], name: "index_items_on_user_id", using: :btree
  end

  create_table "sales", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "prefecture_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
