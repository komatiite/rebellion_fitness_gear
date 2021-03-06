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

ActiveRecord::Schema.define(version: 20180412062736) do

  create_table "abouts", force: :cascade do |t|
    t.string "title"
    t.string "tagline"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "password"
    t.string "phone"
    t.string "address"
    t.string "city"
    t.string "postalcode"
    t.string "shippingaddress"
    t.string "shippingcity"
    t.string "shippingprovince"
    t.string "shippingpostalcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "province_id"
    t.index ["province_id"], name: "index_customers_on_province_id"
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
    t.string "stripe_customer_id"
    t.float "gst"
    t.float "pst"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "customer_id"
    t.integer "province_id"
    t.float "total_price"
    t.string "stripe_charge_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["province_id"], name: "index_orders_on_province_id"
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "order_id"
    t.decimal "price", precision: 12, scale: 3
    t.integer "quantity"
    t.decimal "total_price", precision: 12, scale: 3
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_product_orders_on_order_id"
    t.index ["product_id"], name: "index_product_orders_on_product_id"
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
    t.string "width"
    t.string "diameter"
    t.string "height"
    t.string "length"
    t.string "weight"
    t.string "volume"
    t.string "size"
    t.string "resistance"
    t.string "colour"
    t.string "material"
    t.string "max_weight"
    t.string "finish"
    t.string "image"
    t.boolean "new"
    t.boolean "sale"
    t.float "sale_price"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "provinces", force: :cascade do |t|
    t.string "name"
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
