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

ActiveRecord::Schema.define(version: 20140608153416) do

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

  create_table "headshot_photos", force: true do |t|
    t.string   "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.integer  "capturable_id"
    t.string   "capturable_type"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: true do |t|
    t.integer "minor_id"
    t.integer "employer_id"
  end

  add_index "jobs", ["employer_id"], name: "index_jobs_on_employer_id"
  add_index "jobs", ["minor_id"], name: "index_jobs_on_minor_id"

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
    t.integer  "user_id"
  end

  add_index "minors", ["user_id"], name: "index_minors_on_user_id"

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

  create_table "supervisors", force: true do |t|
    t.string   "first_name",           limit: 25
    t.string   "last_name",            limit: 25
    t.string   "position",             limit: 50
    t.string   "signature_image_path"
    t.integer  "employer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
