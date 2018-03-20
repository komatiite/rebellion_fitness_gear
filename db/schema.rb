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

ActiveRecord::Schema.define(version: 20180320230352) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password"
    t.integer "phone"
    t.string "address"
    t.string "city"
    t.string "province"
    t.string "postalcode"
    t.string "shippingaddress"
    t.string "shippingcity"
    t.string "shippingprovince"
    t.string "shippingpostalcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "filename"
    t.boolean "default"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product_id"
    t.index ["product_id"], name: "index_images_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.string "status"
    t.string "stripeid"
    t.float "gst"
    t.float "pst"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.integer "province_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["province_id"], name: "index_orders_on_province_id"
  end

  create_table "orders_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "order_id", null: false
    t.integer "quantity"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_orders_products_on_order_id"
    t.index ["product_id"], name: "index_orders_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "sku"
    t.string "name"
    t.text "description"
    t.integer "quantity"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.float "price"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "code"
    t.float "gst"
    t.float "pst"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "firstname"
    t.string "lastname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
