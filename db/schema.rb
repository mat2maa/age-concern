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

ActiveRecord::Schema.define(version: 20141018141329) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advices", force: true do |t|
    t.text     "medical_text"
    t.text     "financial_text"
    t.text     "legal_text"
    t.text     "housing_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.text     "text"
    t.string   "first_name"
    t.string   "surname"
    t.string   "type"
    t.string   "address_line_1"
    t.string   "address_line_2"
    t.string   "town"
    t.string   "postcode"
    t.string   "county"
    t.string   "tel"
    t.string   "email_1"
    t.string   "email_2"
    t.string   "longitude"
    t.string   "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "post_text"
    t.datetime "start_date"
    t.string   "end_date"
    t.string   "main_image"
    t.string   "main_image_file_size"
    t.string   "main_image_content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "the_teams", force: true do |t|
    t.text     "trustees_text"
    t.text     "staff_text"
    t.text     "volunteers_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "what_we_offers", force: true do |t|
    t.text     "activities_text"
    t.text     "groups_text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "your_supports", force: true do |t|
    t.text     "text"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
