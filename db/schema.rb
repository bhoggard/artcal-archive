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

ActiveRecord::Schema.define(version: 20110129070117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exhibits", force: true do |t|
    t.string   "name",               null: false
    t.text     "description"
    t.integer  "location_id"
    t.string   "url"
    t.integer  "editor_rating",      null: false
    t.date     "start_date",         null: false
    t.date     "end_date",           null: false
    t.date     "opening_date"
    t.time     "opening_start_time"
    t.time     "opening_end_time"
    t.integer  "publish_status"
    t.text     "image_caption"
    t.string   "image_source"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "old_caption"
    t.boolean  "published"
  end

  add_index "exhibits", ["location_id"], name: "index_exhibits_on_location_id", using: :btree
  add_index "exhibits", ["published"], name: "index_exhibits_on_published", using: :btree

  create_table "locations", force: true do |t|
    t.string   "name",                      null: false
    t.string   "street_name",               null: false
    t.string   "address_number"
    t.string   "address_part2"
    t.string   "telephone"
    t.string   "url"
    t.string   "zip"
    t.float    "sort_number"
    t.float    "longitude"
    t.float    "latitude"
    t.integer  "location_type",   limit: 2, null: false
    t.integer  "neighborhood_id",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "closed"
    t.boolean  "published"
  end

  add_index "locations", ["closed"], name: "index_locations_on_closed", using: :btree
  add_index "locations", ["name"], name: "index_locations_on_name", using: :btree
  add_index "locations", ["neighborhood_id"], name: "index_locations_on_neighborhood_id", using: :btree
  add_index "locations", ["published"], name: "index_locations_on_published", using: :btree

  create_table "neighborhoods", force: true do |t|
    t.string "name", null: false
  end

  add_index "neighborhoods", ["name"], name: "index_neighborhoods_on_name", unique: true, using: :btree

  create_table "settings", force: true do |t|
    t.string "name"
    t.text   "value"
  end

  add_index "settings", ["name"], name: "index_settings_on_name", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                               null: false
    t.string   "crypted_password",                    null: false
    t.string   "password_salt",                       null: false
    t.string   "persistence_token",                   null: false
    t.string   "single_access_token",                 null: false
    t.string   "perishable_token",                    null: false
    t.integer  "login_count",         default: 0,     null: false
    t.integer  "failed_login_count",  default: 0,     null: false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.boolean  "active",              default: true
    t.boolean  "admin",               default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree
  add_index "users", ["perishable_token"], name: "index_users_on_perishable_token", using: :btree

end
