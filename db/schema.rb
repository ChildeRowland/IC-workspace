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

ActiveRecord::Schema.define(version: 20141020140310) do

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

  create_table "inventories", force: true do |t|
    t.integer  "site_id"
    t.integer  "unit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "retrofit_jobs", force: true do |t|
    t.string   "store_number"
    t.string   "mall_name"
    t.string   "phone"
    t.text     "hours"
    t.date     "start"
    t.date     "finish"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sites", force: true do |t|
    t.string   "client"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "units", force: true do |t|
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "unit_type"
    t.string   "order_id"
    t.string   "vendor"
    t.string   "mfg"
    t.string   "product_id"
    t.string   "nickname"
    t.string   "description"
    t.string   "notes"
    t.integer  "product_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
