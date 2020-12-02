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

ActiveRecord::Schema.define(version: 2020_12_02_014902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.bigint "garage_id"
    t.integer "member_since"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "currently_parked", default: false
    t.index ["garage_id"], name: "index_customers_on_garage_id"
  end

  create_table "garages", force: :cascade do |t|
    t.string "address"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "spot_count"
    t.integer "cost"
  end

  add_foreign_key "customers", "garages"
end
