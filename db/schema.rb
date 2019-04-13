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

ActiveRecord::Schema.define(version: 0) do

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
  add_foreign_key "users", "cards"
  add_foreign_key "users", "payments"
  add_foreign_key "users", "points"
  add_foreign_key "users", "sales_moneys"
end
