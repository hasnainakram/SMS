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

ActiveRecord::Schema.define(version: 20150705231757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "program_tigle"
    t.string   "Duration"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_name"
    t.integer  "program_id"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "batch"
  end

  add_index "sessions", ["program_id"], name: "index_sessions_on_program_id", using: :btree

  create_table "stus", force: :cascade do |t|
    t.string   "student_name"
    t.string   "f_name"
    t.string   "reg_no"
    t.integer  "program_id"
    t.integer  "session_id"
    t.string   "domicile"
    t.string   "address"
    t.decimal  "mob"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "stus", ["program_id"], name: "index_stus_on_program_id", using: :btree
  add_index "stus", ["session_id"], name: "index_stus_on_session_id", using: :btree
  add_index "stus", ["user_id"], name: "index_stus_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  add_foreign_key "sessions", "programs"
  add_foreign_key "stus", "programs"
  add_foreign_key "stus", "sessions"
  add_foreign_key "stus", "users"
end
