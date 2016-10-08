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

ActiveRecord::Schema.define(version: 20161008215150) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "analysis", force: :cascade do |t|
    t.integer  "meteorite_id"
    t.integer  "citation_id"
    t.text     "notes"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "analysis", ["citation_id"], name: "index_analysis_on_citation_id"
  add_index "analysis", ["meteorite_id"], name: "index_analysis_on_meteorite_id"

  create_table "citations", force: :cascade do |t|
    t.string   "ctype"
    t.string   "authors"
    t.string   "title"
    t.string   "year"
    t.string   "url"
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "classifications", force: :cascade do |t|
    t.string "mtype"
    t.string "mcategory"
    t.string "mclass"
    t.string "mclan"
    t.string "mgroup"
  end

  create_table "element_analysis", force: :cascade do |t|
    t.integer  "analysis_id"
    t.string   "element"
    t.float    "min"
    t.float    "max"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "element_analysis", ["analysis_id"], name: "index_element_analysis_on_analysis_id"

  create_table "locations", force: :cascade do |t|
    t.string  "country_code"
    t.string  "name"
    t.decimal "latitude"
    t.decimal "longitude"
  end

  create_table "meteorites", force: :cascade do |t|
    t.string   "code"
    t.string   "altcode"
    t.string   "name"
    t.string   "altname"
    t.integer  "classification_id"
    t.float    "mass"
    t.boolean  "fall"
    t.date     "event_date"
    t.integer  "location_id"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "url"
    t.text     "notes"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "meteorites", ["classification_id"], name: "index_meteorites_on_classification_id"
  add_index "meteorites", ["location_id"], name: "index_meteorites_on_location_id"

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.string   "institution"
    t.string   "department"
    t.string   "role"
    t.string   "address"
    t.integer  "location_id"
    t.string   "zip"
    t.string   "phone"
    t.string   "fax"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "parties", ["location_id"], name: "index_parties_on_location_id"

  create_table "specimen", force: :cascade do |t|
    t.integer  "meteorite_id"
    t.string   "code"
    t.boolean  "active"
    t.boolean  "type_specimen"
    t.string   "accession"
    t.string   "initial_mass"
    t.text     "description"
    t.text     "notes"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "specimen", ["meteorite_id"], name: "index_specimen_on_meteorite_id"

end
