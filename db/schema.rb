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

ActiveRecord::Schema.define(version: 20220131174630) do

  create_table "cv_subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cvstudents", force: :cascade do |t|
    t.integer  "idnum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.string   "password_digest"
    t.string   "email"
    t.boolean  "admin",                  default: false
    t.string   "adminKey"
    t.boolean  "academy"
    t.string   "remember_digest"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean  "super"
  end

  create_table "study_groups", force: :cascade do |t|
    t.string   "creatorName"
    t.string   "date"
    t.string   "location"
    t.integer  "groupSize"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "groupName"
    t.string   "time"
    t.string   "email"
    t.string   "passkey"
    t.text     "thearray"
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.string   "date"
    t.string   "rate"
    t.integer  "creatorid"
    t.text     "days"
    t.text     "Multiplesubjects"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "timeslots"
  end

  create_table "tutor_requests", force: :cascade do |t|
    t.string   "student"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "name"
    t.string   "whichSubject"
    t.string   "time"
    t.boolean  "accepted"
    t.string   "string"
    t.text     "timeslots"
  end

  create_table "tutors", force: :cascade do |t|
    t.integer  "id_num"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "people_id"
    t.integer  "grade"
    t.string   "adminOverride"
    t.boolean  "academy"
    t.boolean  "super"
    t.index ["people_id"], name: "index_tutors_on_people_id"
  end

end
