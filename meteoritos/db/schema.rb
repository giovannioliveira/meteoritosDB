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

ActiveRecord::Schema.define(version: 20161001041157) do

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

  create_table "analyses", force: :cascade do |t|
    t.integer  "meteorite_id"
    t.integer  "bibref_id"
    t.string   "info"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "analyses", ["bibref_id"], name: "index_analyses_on_bibref_id"
  add_index "analyses", ["meteorite_id"], name: "index_analyses_on_meteorite_id"

  create_table "bibref_mets", force: :cascade do |t|
    t.integer  "bibref_id"
    t.integer  "met_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bibref_mets", ["bibref_id"], name: "index_bibref_mets_on_bibref_id"
  add_index "bibref_mets", ["met_id"], name: "index_bibref_mets_on_met_id"

  create_table "bibrefs", force: :cascade do |t|
    t.string   "author"
    t.string   "publication"
    t.integer  "year"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "state_id"
  end

  add_index "cities", ["state_id"], name: "index_cities_on_state_id"

  create_table "countries", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elem_analyses", force: :cascade do |t|
    t.integer  "analysis_id"
    t.string   "elem"
    t.float    "val"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "elem_analyses", ["analysis_id"], name: "index_elem_analyses_on_analysis_id"

  create_table "mclasses", force: :cascade do |t|
    t.integer  "mtype_id"
    t.string   "mclass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mclasses", ["mtype_id"], name: "index_mclasses_on_mtype_id"

  create_table "meteorites", force: :cascade do |t|
    t.string   "cod"
    t.string   "extcod"
    t.string   "name"
    t.string   "synonyms"
    t.date     "fall_date"
    t.boolean  "observed"
    t.integer  "mgroup_id"
    t.integer  "country_id"
    t.integer  "state_id"
    t.integer  "city_id"
    t.float    "mass"
    t.float    "lat"
    t.float    "lon"
    t.string   "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "meteorites", ["city_id"], name: "index_meteorites_on_city_id"
  add_index "meteorites", ["country_id"], name: "index_meteorites_on_country_id"
  add_index "meteorites", ["mgroup_id"], name: "index_meteorites_on_mgroup_id"
  add_index "meteorites", ["state_id"], name: "index_meteorites_on_state_id"

  create_table "mgroups", force: :cascade do |t|
    t.integer  "mclass_id"
    t.string   "mgroup"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "mgroups", ["mclass_id"], name: "index_mgroups_on_mclass_id"

  create_table "mtypes", force: :cascade do |t|
    t.string   "mtype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "country_id"
  end

  add_index "states", ["country_id"], name: "index_states_on_country_id"

end
