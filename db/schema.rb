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

ActiveRecord::Schema.define(version: 2019_07_15_103447) do

  create_table "cart_items", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "item_id", null: false
    t.integer "count", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "last_name", null: false
    t.string "read_last_name", null: false
    t.string "first_name", null: false
    t.string "read_first_name", null: false
    t.string "phone_number", null: false
    t.string "post_code", null: false
    t.string "prefecture", null: false
    t.string "city", null: false
    t.string "street", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
  end

  create_table "items", force: :cascade do |t|
    t.text "image_id", null: false
    t.integer "singer_id", null: false
    t.string "name", null: false
    t.integer "price", null: false
    t.integer "label_id", null: false
    t.integer "genre_id", null: false
    t.integer "stock", null: false
    t.integer "delivery_status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "item_id", null: false
    t.integer "price", null: false
    t.integer "count", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "delivery_status", null: false
    t.integer "sum", null: false
    t.integer "postage", null: false
    t.string "address", null: false
    t.string "payment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "last_name", null: false
    t.string "read_last_name", null: false
    t.string "first_name", null: false
    t.string "read_first_name", null: false
    t.string "phone_number", null: false
    t.string "post_code", null: false
    t.string "prefecture", null: false
    t.string "city", null: false
    t.string "street", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end