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

ActiveRecord::Schema.define(version: 2020_02_26_035407) do

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "prefecture"
    t.string "city"
    t.string "street"
    t.string "number"
    t.string "year"
    t.integer "age"
    t.integer "lock"
    t.integer "net"
    t.integer "pets"
    t.integer "parking"
    t.integer "bike"
    t.string "image_top"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "image_sub"
    t.bigint "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_images_on_room_id"
  end

  create_table "rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.float "rent"
    t.integer "service"
    t.integer "plan"
    t.float "exclusive"
    t.integer "security"
    t.integer "key"
    t.integer "floor"
    t.integer "bath"
    t.integer "washroom"
    t.integer "washing"
    t.integer "air"
    t.integer "second"
    t.string "image_plan"
    t.bigint "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_rooms_on_building_id"
  end

  create_table "stations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "route"
    t.integer "name"
    t.integer "walk"
    t.bigint "building_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["building_id"], name: "index_stations_on_building_id"
  end

  add_foreign_key "images", "rooms"
  add_foreign_key "rooms", "buildings"
  add_foreign_key "stations", "buildings"
end
