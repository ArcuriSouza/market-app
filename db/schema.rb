# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_08_02_201226) do

  create_table "branches", charset: "utf8mb4", force: :cascade do |t|
    t.string "description"
    t.string "address"
    t.string "phone"
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", charset: "utf8mb4", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", charset: "utf8mb4", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "age"
    t.boolean "is_admin"
    t.boolean "is_club"
    t.bigint "genders_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["genders_id"], name: "index_customers_on_genders_id"
  end

  create_table "genders", charset: "utf8mb4", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "branches_id"
    t.bigint "customers_id"
    t.decimal "total_value", precision: 10, scale: 2
    t.string "details"
    t.boolean "is_active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["branches_id"], name: "index_invoices_on_branches_id"
    t.index ["customers_id"], name: "index_invoices_on_customers_id"
  end

  create_table "items", charset: "utf8mb4", force: :cascade do |t|
    t.string "description"
    t.bigint "categories_id"
    t.string "inventory"
    t.decimal "price", precision: 8, scale: 2
    t.decimal "price_promo", precision: 8, scale: 2
    t.integer "club_perc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["categories_id"], name: "index_items_on_categories_id"
  end

  create_table "sales_item", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "invoices_id"
    t.bigint "items_id"
    t.decimal "price", precision: 8, scale: 2
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoices_id"], name: "index_sales_item_on_invoices_id"
    t.index ["items_id"], name: "index_sales_item_on_items_id"
  end

end
