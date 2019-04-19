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

ActiveRecord::Schema.define(version: 20190417053336) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "postal_code",     null: false
    t.string   "building_number"
    t.string   "prefecture_id",   null: false
    t.string   "city",            null: false
    t.string   "block",           null: false
    t.integer  "phone_number",    null: false
    t.integer  "user_id",         null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_addresses_on_user_id", using: :btree
  end

  create_table "brands", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "brand"
    t.integer  "item_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_brands_on_item_id", using: :btree
  end

  create_table "cards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "number",        null: false
    t.string   "valid_month",   null: false
    t.string   "vaild_year",    null: false
    t.string   "security_code", null: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["user_id"], name: "index_cards_on_user_id", using: :btree
  end

  create_table "categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "category_name", null: false
    t.integer  "item_id",       null: false
    t.integer  "parent_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["item_id"], name: "index_categories_on_item_id", using: :btree
    t.index ["parent_id"], name: "index_categories_on_parent_id", using: :btree
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "comment",    limit: 65535, null: false
    t.integer  "item_id",                  null: false
    t.integer  "user_id",                  null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.index ["item_id"], name: "index_comments_on_item_id", using: :btree
    t.index ["user_id"], name: "index_comments_on_user_id", using: :btree
  end

  create_table "deliveries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "delivery_cost",   null: false
    t.string   "prefecture_id",   null: false
    t.string   "delivery_method", null: false
    t.integer  "delivery_days",   null: false
    t.integer  "item_id",         null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["item_id"], name: "index_deliveries_on_item_id", using: :btree
  end

  create_table "item_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "image",      null: false
    t.integer  "item_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_item_images_on_item_id", using: :btree
  end

  create_table "items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "product_name",        limit: 65535, null: false
    t.integer  "price",                             null: false
    t.text     "product_description", limit: 65535, null: false
    t.integer  "category_id",                       null: false
    t.integer  "size_id",                           null: false
    t.string   "product_state",                     null: false
    t.string   "trade_state",                       null: false
    t.string   "listing_date",                      null: false
    t.integer  "brand_id",                          null: false
    t.integer  "delivery_id",                       null: false
    t.integer  "image_id",                          null: false
    t.integer  "comment_id",                        null: false
    t.integer  "user_id",                           null: false
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

  create_table "payments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "payment",    null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_payments_on_user_id", using: :btree
  end

  create_table "points", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "point",      null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_points_on_user_id", using: :btree
  end

  create_table "profiles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "family_name",      null: false
    t.string   "first_name",       null: false
    t.string   "family_name_kana", null: false
    t.string   "first_name_kana",  null: false
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "sales_moneys", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "sales_money", null: false
    t.integer  "user_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_sales_moneys_on_user_id", using: :btree
  end

  create_table "sizes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       null: false
    t.integer  "item_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_sizes_on_item_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "nickname",                   null: false
    t.string   "email",                      null: false
    t.string   "password",                   null: false
    t.text     "introduction", limit: 65535
    t.date     "bithday",                    null: false
    t.string   "evaluation"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "brands", "items"
  add_foreign_key "cards", "users"
  add_foreign_key "categories", "categories", column: "parent_id"
  add_foreign_key "categories", "items"
  add_foreign_key "comments", "items"
  add_foreign_key "comments", "users"
  add_foreign_key "deliveries", "items"
  add_foreign_key "item_images", "items"
  add_foreign_key "items", "brands"
  add_foreign_key "items", "categories"
  add_foreign_key "items", "comments"
  add_foreign_key "items", "deliveries"
  add_foreign_key "items", "item_images", column: "image_id"
  add_foreign_key "items", "sizes"
  add_foreign_key "items", "users"
  add_foreign_key "payments", "users"
  add_foreign_key "points", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "sales_moneys", "users"
  add_foreign_key "sizes", "items"
end
