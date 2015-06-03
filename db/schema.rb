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

ActiveRecord::Schema.define(version: 20150602193718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "citext"

  create_table "log_entries", force: :cascade do |t|
    t.integer  "log_id"
    t.jsonb    "data",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "log_entries", ["data"], name: "index_log_entries_on_data", using: :gin
  add_index "log_entries", ["log_id"], name: "index_log_entries_on_log_id", using: :btree

  create_table "logs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "representations", force: :cascade do |t|
    t.integer  "log_id"
    t.string   "chart_type", null: false
    t.jsonb    "structure",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "representations", ["log_id"], name: "index_representations_on_log_id", using: :btree
  add_index "representations", ["structure"], name: "index_representations_on_structure", using: :gin

  add_foreign_key "log_entries", "logs"
  add_foreign_key "representations", "logs"
end
