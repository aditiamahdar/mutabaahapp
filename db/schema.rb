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

ActiveRecord::Schema.define(version: 20161120173345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "group_users", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_group_users_on_group_id", using: :btree
    t.index ["user_id"], name: "index_group_users_on_user_id", using: :btree
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "murabbi_id"
    t.date     "start_at"
    t.date     "end_at"
    t.string   "region"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["murabbi_id"], name: "index_groups_on_murabbi_id", using: :btree
  end

  create_table "muwashafat_users", force: :cascade do |t|
    t.integer  "muwashafat_id"
    t.integer  "user_id"
    t.boolean  "status"
    t.text     "note"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["muwashafat_id"], name: "index_muwashafat_users_on_muwashafat_id", using: :btree
    t.index ["user_id"], name: "index_muwashafat_users_on_user_id", using: :btree
  end

  create_table "muwashafats", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "level"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.text     "password"
    t.string   "email"
    t.string   "phone"
    t.date     "birthdate"
    t.text     "bio"
    t.string   "url"
    t.integer  "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "token"
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["password"], name: "index_users_on_password", using: :btree
    t.index ["username"], name: "index_users_on_username", using: :btree
  end

  create_table "yaumiyah_reports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "yaumiyah_id"
    t.date     "date"
    t.integer  "amount"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_yaumiyah_reports_on_user_id", using: :btree
    t.index ["yaumiyah_id"], name: "index_yaumiyah_reports_on_yaumiyah_id", using: :btree
  end

  create_table "yaumiyahs", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_foreign_key "group_users", "groups"
  add_foreign_key "group_users", "users"
  add_foreign_key "muwashafat_users", "muwashafats"
  add_foreign_key "muwashafat_users", "users"
  add_foreign_key "yaumiyah_reports", "users"
  add_foreign_key "yaumiyah_reports", "yaumiyahs"
end
