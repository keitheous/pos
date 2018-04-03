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

ActiveRecord::Schema.define(version: 20180403092315) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.decimal "total_sum", precision: 8, scale: 2
    t.boolean "take_out", default: false
    t.date "dine_in_date"
    t.time "dine_in_time"
    t.datetime "session"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "position"
    t.string "access_level"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "outlet_id"
    t.index ["outlet_id"], name: "index_employees_on_outlet_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.decimal "price", precision: 8, scale: 2
    t.text "description"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "outlet_id"
    t.index ["outlet_id"], name: "index_items_on_outlet_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "number"
    t.date "date"
    t.time "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "customer_id"
    t.bigint "employee_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["employee_id"], name: "index_orders_on_employee_id"
  end

  create_table "outlets", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "address"
    t.integer "staff"
    t.integer "tables"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "employees", "outlets"
  add_foreign_key "items", "outlets"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
end
