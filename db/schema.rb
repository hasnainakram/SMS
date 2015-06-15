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

ActiveRecord::Schema.define(version: 20150602230146) do

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

  create_table "lecturers", force: :cascade do |t|
    t.string   "name"
    t.string   "desig"
    t.date     "date_of_join"
    t.string   "address"
    t.string   "qualification"
    t.decimal  "cnic"
    t.string   "type"
    t.string   "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "program_tigle"
    t.string   "Duration"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "F_name"
    t.string   "L_name"
    t.string   "gender"
    t.date     "B_date"
    t.string   "email"
    t.decimal  "mob"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "Regstration_no"
    t.string   "department"
    t.string   "program"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "program_id"
  end

  add_index "students", ["program_id"], name: "index_students_on_program_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "Created_by"
    t.integer  "program_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["program_id"], name: "index_users_on_program_id", using: :btree

  add_foreign_key "students", "programs"
  add_foreign_key "users", "programs"
end