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

ActiveRecord::Schema.define(version: 2021_02_16_155603) do

  create_table "acts", force: :cascade do |t|
    t.integer "number"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "acts_parts", id: false, force: :cascade do |t|
    t.integer "act_id", null: false
    t.integer "part_id", null: false
    t.index [nil], name: "index_acts_parts_on_acts_id"
    t.index [nil], name: "index_acts_parts_on_parts_id"
  end

  create_table "banans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "banans_countries", id: false, force: :cascade do |t|
    t.integer "banan_id", null: false
    t.integer "country_id", null: false
    t.index [nil], name: "index_banans_countries_on_banans_id"
    t.index [nil], name: "index_banans_countries_on_countries_id"
  end

  create_table "bugs", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bugs_trees", id: false, force: :cascade do |t|
    t.integer "bug_id", null: false
    t.integer "tree_id", null: false
    t.index ["bug_id", "tree_id"], name: "index_bugs_trees_on_bug_id_and_tree_id"
    t.index ["tree_id", "bug_id"], name: "index_bugs_trees_on_tree_id_and_bug_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "marka"
    t.integer "paint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paint_id"], name: "index_cars_on_paint_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paints", force: :cascade do |t|
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "car_id"
    t.index ["car_id"], name: "index_paints_on_car_id"
  end

  create_table "parthners", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plates", force: :cascade do |t|
    t.string "name"
    t.integer "homes_id"
    t.integer "streets_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["homes_id"], name: "index_plates_on_homes_id"
    t.index ["streets_id"], name: "index_plates_on_streets_id"
  end

  create_table "streets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "trees", force: :cascade do |t|
    t.string "name"
    t.string "subclass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
