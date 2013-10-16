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

ActiveRecord::Schema.define(version: 20131016150544) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.string   "coordinate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "restaurant_id"
    t.boolean  "is_vegi"
    t.decimal  "price"
    t.boolean  "is_msg_free"
    t.text     "ingredient"
    t.text     "meta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dishes", ["restaurant_id"], name: "index_dishes_on_restaurant_id"

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.integer  "city_id"
    t.string   "street"
    t.string   "coordinate"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "website"
    t.text     "description"
    t.text     "extra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["city_id"], name: "index_restaurants_on_city_id"

end
