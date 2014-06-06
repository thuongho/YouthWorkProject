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

ActiveRecord::Schema.define(version: 20140606082752) do

  create_table "employer_addresses", force: true do |t|
    t.string   "address_line_one", limit: 50
    t.string   "address_line_two", limit: 50
    t.string   "city",             limit: 20
    t.string   "zip",              limit: 15
    t.string   "phone",            limit: 15
    t.integer  "employer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers", force: true do |t|
    t.string   "business_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "minor_addresses", force: true do |t|
    t.string   "address_line_one", limit: 50
    t.string   "address_line_two", limit: 50
    t.string   "city",             limit: 20
    t.string   "zip",              limit: 15
    t.string   "phone",            limit: 15
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "minor_id"
  end

  create_table "minors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "ssn"
    t.date     "dob"
    t.integer  "age"
    t.integer  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "school_addresses", force: true do |t|
    t.string   "address_line_one", limit: 50
    t.string   "address_line_two", limit: 50
    t.string   "city",             limit: 20
    t.string   "zip",              limit: 15
    t.string   "phone",            limit: 15
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
