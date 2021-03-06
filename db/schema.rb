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

ActiveRecord::Schema.define(version: 20141225204756) do

  create_table "addresses", force: true do |t|
    t.integer  "locatable_id"
    t.string   "locatable_type"
    t.string   "line_one"
    t.string   "line_two"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assets", force: true do |t|
    t.string   "fname"
    t.string   "mname"
    t.string   "lname"
    t.date     "dob"
    t.string   "phone"
    t.string   "email"
    t.string   "rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.integer  "retrofit_job_id"
    t.string   "title"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "crews", force: true do |t|
    t.integer  "retrofit_job_id"
    t.integer  "asset_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", force: true do |t|
    t.integer  "retrofit_job_id"
    t.integer  "unit_id"
    t.integer  "quantity"
    t.string   "status"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", force: true do |t|
    t.integer  "listable_id"
    t.string   "listable_type"
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "preferences", force: true do |t|
    t.integer  "asset_id"
    t.string   "airport"
    t.string   "seats"
    t.string   "airline"
    t.text     "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.integer  "retrofit_job_id"
    t.date     "day"
    t.string   "completed_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "retrofit_jobs", force: true do |t|
    t.string   "store_number"
    t.string   "mall_name"
    t.string   "phone"
    t.text     "hours"
    t.string   "url"
    t.integer  "sqft"
    t.date     "start"
    t.date     "finish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.integer  "retrofit_job_id"
    t.string   "title"
    t.string   "description"
    t.text     "notes"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travels", force: true do |t|
    t.integer  "crew_id"
    t.string   "carrier_name"
    t.string   "carrier_number"
    t.string   "confirmation_number"
    t.date     "day"
    t.string   "depart_city"
    t.time     "depart_time"
    t.string   "arrive_city"
    t.time     "arrive_time"
    t.string   "status"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "img"
    t.string   "type_of"
    t.string   "order_identifier"
    t.string   "vendor"
    t.string   "mfg"
    t.string   "product_identifier"
    t.string   "nickname"
    t.string   "finish"
    t.string   "description"
    t.text     "notes"
    t.string   "product_type"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
