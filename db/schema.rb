# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150720120133) do

  create_table "drives", force: :cascade do |t|
    t.integer  "power"
    t.boolean  "military"
    t.integer  "mass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planets", force: :cascade do |t|
    t.integer  "system_id"
    t.string   "code"
    t.string   "name"
    t.boolean  "atmosphere"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "planets", ["system_id"], name: "index_planets_on_system_id"

  create_table "routes", force: :cascade do |t|
    t.integer  "system1_id"
    t.integer  "system2_id"
    t.integer  "distance_cents"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "routes", ["system1_id"], name: "index_routes_on_system1_id"
  add_index "routes", ["system2_id"], name: "index_routes_on_system2_id"

  create_table "settlements", force: :cascade do |t|
    t.integer  "planet_id"
    t.string   "name"
    t.string   "settlement_type"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "settlements", ["planet_id"], name: "index_settlements_on_planet_id"

  create_table "ships", force: :cascade do |t|
    t.string   "name"
    t.integer  "capacity"
    t.integer  "mass"
    t.integer  "guns"
    t.integer  "missiles"
    t.integer  "crew"
    t.float    "acceleration"
    t.float    "deceleration"
    t.integer  "default_drive_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "ships", ["default_drive_id"], name: "index_ships_on_default_drive_id"

  create_table "stocks", force: :cascade do |t|
    t.integer  "system_id"
    t.string   "name"
    t.string   "import_export"
    t.integer  "cost_decs"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "stocks", ["system_id"], name: "index_stocks_on_system_id"

  create_table "systems", force: :cascade do |t|
    t.string   "name"
    t.float    "x"
    t.float    "y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "upgrades", force: :cascade do |t|
    t.string   "name"
    t.integer  "mass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
