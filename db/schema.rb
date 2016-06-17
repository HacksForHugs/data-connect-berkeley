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

ActiveRecord::Schema.define(version: 20160614180206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clusters", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "cluster_id"
    t.integer  "units"
    t.string   "course_number"
    t.string   "department"
    t.integer  "current_class_id"
    t.integer  "classifier"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "courses", ["current_class_id"], name: "index_courses_on_current_class_id", using: :btree

  create_table "links", force: :cascade do |t|
    t.text     "url"
    t.integer  "research_id"
    t.text     "title"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "links", ["research_id"], name: "index_links_on_research_id", using: :btree

  create_table "researches", force: :cascade do |t|
    t.string   "title"
    t.integer  "education_level"
    t.integer  "client_focus"
    t.text     "description"
    t.integer  "cluster_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "supports", force: :cascade do |t|
    t.string   "title"
    t.integer  "cluster_id"
    t.integer  "education_level"
    t.integer  "teaching_style"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "courses", "clusters"
  add_foreign_key "links", "researches"
  add_foreign_key "researches", "clusters"
  add_foreign_key "supports", "clusters"
end
