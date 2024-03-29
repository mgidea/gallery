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

ActiveRecord::Schema.define(version: 20130916200518) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artwork_collections", force: true do |t|
    t.integer  "artwork_id",    null: false
    t.integer  "collection_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "artworks", force: true do |t|
    t.integer  "member_id",                     null: false
    t.date     "creation_date",                 null: false
    t.date     "on_sale_date"
    t.float    "cost"
    t.string   "medium",                        null: false
    t.boolean  "available",     default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "collections", force: true do |t|
    t.string   "title",                      null: false
    t.boolean  "is_current", default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "favorite_collections", force: true do |t|
    t.integer  "member_id",     null: false
    t.integer  "collection_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "name",         null: false
    t.string   "email",        null: false
    t.string   "phone_number", null: false
    t.string   "address",      null: false
    t.string   "birthplace"
    t.string   "style"
    t.string   "role",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", force: true do |t|
    t.integer  "member_id",  null: false
    t.integer  "artwork_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
