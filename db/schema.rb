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

ActiveRecord::Schema.define(version: 20160812003108) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.float    "price"
    t.datetime "published_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "itemStatus_id"
    t.integer  "category_id"
    t.integer  "seller_id"
    t.index ["category_id"], name: "index_items_on_category_id"
    t.index ["itemStatus_id"], name: "index_items_on_itemStatus_id"
    t.index ["seller_id"], name: "index_items_on_seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string   "name"
    t.decimal  "longitude"
    t.decimal  "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
