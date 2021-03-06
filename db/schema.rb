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

ActiveRecord::Schema.define(version: 20180409235316) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.date "date"
    t.integer "delivery_zone_id"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_zones", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.integer "restaurant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "api_key"
    t.index ["api_key"], name: "index_restaurants_on_api_key", unique: true
  end

  create_table "restrict_restaurant_days", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restrict_restaurant_delivery_zones", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "delivery_zone_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
